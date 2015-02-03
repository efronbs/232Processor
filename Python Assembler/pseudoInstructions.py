


def swap(reg1, reg2, regAt):
    """returns a list of commands to execute the swap pseudo instruction with the given registers:
    Copy $r1, $at
    Copy $r1, $r2
    Copy $at, $r1"""
    inst1 = 0b0000000000011000  # func and op
    inst1 += reg1 << 9          
    inst1 += regAt << 6
    
    inst2 = 0b0000000000011000  # func and op
    inst2 += reg1 << 9          
    inst2 += reg2 << 6
    
    # 
    inst3 = 0b0000000000011000  # func and op
    inst3 += regAt << 9          
    inst3 += reg1 << 6
    
    return [inst1, inst2, inst3]

def move(reg1, reg2, regAt):
    """
    if r1 = 000:
        copy $m, $r2
        li 0
    else:
        copy $r1, $r2
        copy $m, $at
        li 0
        copy $m $r1
        copy $at, $m
    """
    if reg1 == 0:
        # copy $m, $r2
        inst1 = 0b0000000000011000  # func and op
        inst1 += reg2 << 6
        # li 0
        inst2 = 0b1000000000000000
        
        return [inst1, inst2]
    else:
        # copy $r1, $r2
        
        inst1 = 0b0000000000011000  # func and op
        inst1 += reg1 << 9
        inst1 += reg2 << 6
        # copy $m, $at
        
        inst2 = 0b0000000000011000
        inst2 += regAt << 6
        # li 0
        inst3 = 0b1000000000000000
        # copy $m $r1
        inst4 = 0b0000000000011000
        inst4 += reg1 << 6
        # copy $at, $m
        inst5 = 0b0000000000011000
        inst5 += regAt << 9
        
        return [inst1, inst2, inst3, inst4, inst5]
    
def lui(immediate):
    
    inst1 = 0b1000000000000000
    inst1 += immediate
    
    inst2 = 0b1100000000000100 # sll $m, 4
    
    return [inst1, inst2]
    
def jal(imm, regAt, currentLine=0):
    """
Copy $m, $at    # store argument in $at
Copy $ra, $m    # load return address
Sw $sp[0]    # store return address in memory
Copy $sp, $m    # load stack pointer
Addi 1    # update stack pointer
Copy $m, $sp    # store new stack pointer
Li [current PC + 4]    # load the address of the (current line + 4) to set new $ra, (done in assembler)
Copy $m, $ra    # sets $ra to the new return address
Copy $at, $m    # restores the argument to the main reg from $at. 
J [given immediate]    # jumps to desired destination.
    """
    regSp = 0b010
    regRa = 0b001
    
    inst1 = 0b0000000000011000
    inst1 += regAt << 6

    inst2 = 0b0000000000011000
    inst2 += regRa << 9
    
    inst3 = 0b0110000000000000  # sw __ [0]
    inst3 += regSp << 9         # sw $sp[0]
    
    inst4 = 0b0000000000011000
    inst4 += regSp << 9
    
    inst5 = 0b0001000000000001 # addi 1
    
    inst6 = 0b0000000000011000
    inst6 += regSp << 6
    
    """TODO - this needs to read the current address"""
    inst7 = 0b1000000000000000 # TODO
    inst7 += (currentLine + 11)
    
    inst8 = 0b0000000000011000
    inst8 += regRa << 6
    
    inst9 = 0b0000000000011000
    inst9 += regAt << 9
    
    inst10 = 0b0100000000000000
    inst10 += imm
    
    return [inst1,inst2,inst3,inst4,inst5,inst6,inst7,inst8,inst9,inst10]
    
    