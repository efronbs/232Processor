from exceptions import UnknownCommandException
from exceptions import PseudoInstructionException
from exceptions import RegisterNotFoundException
from exceptions import UndeclaredLabelException
from instructions import Instruction
import pseudoInstructions
from label import Label

global labels
labels = []

def main():
    """main method"""
    
    # load file etc...
    # 
    # 
    # 
    file = ""
    assemblyCode = ["addi 10", "copy $m, $t0", "add $m, $t0"]       # read from file
    
    process_code(assemblyCode)
    
def readCodeFromFile(assemblyFileName, newFileName):
    """takes a file name, reads the assembly code in that file, and builds a new file with the machine code in it."""
    
    file = open(assemblyFileName, "r")
    fileTxt = file.read().split("\n") # splits the code into an array filled with strings of 1 line of assembly code each.
    file.close()
    instructionList = process_code(fileTxt)
    
    
    wrtFile = open(newFileName, "w")
    
    
    wrtStr = bin(instructionList[0])[2:].rjust(16, "0")
    wrtFile.write(wrtStr)
    for i in range(1, len(instructionList)):
        wrtFile.write("\n") #last line does not get a newline
        wrtStr = bin(instructionList[i])[2:].rjust(16, "0")
        wrtFile.write(wrtStr)
    wrtFile.close()
    
    
def process_code(assemblyCode):
    
    extractLabels(assemblyCode)
    instructionList = [] # list of int instructions  
    for i in range (len(assemblyCode)):
        instruction = Instruction()
        assembly = assemblyCode[i].split(" ")
        
        try:
            setOpAndFunc(instruction, assembly)
            
            if instruction.type == 0: # I type
                instruction.setImmediate(defineImmediate(assembly[1]))
            elif instruction.type == 1: # R-type
                instruction.setRegister(assembly[1])
                instruction.setRegister(assembly[2])
            elif instruction.type == 2: # IR-type
                instruction.setRegister(assembly[1])
                instruction.setImmediate(defineImmediate(assembly[2]))
            elif instruction.type == 3: # JR-type
                instruction.setRegister(assembly[1])
                
            instructionList.append(instruction.compile())
        except(PseudoInstructionException):
            processPseudoInstruction(assembly, instructionList)
            print("pseudo instruction detected")
        
        
    print_display(instructionList, assemblyCode)
    return instructionList

def extractLabels(assemblyCode):
    """fomats the code, removing empty lines and labels from the instruction list, and also storing the location of the labels."""
    global labels
    labels = []
    nLines = len(assemblyCode)
    i = 0 
    while(i < nLines):
        delete = False
        assemblyCode[i] = assemblyCode[i].strip()
        if assemblyCode[i] == "":
            delete = True
        elif assemblyCode[i][-1] == ":":
            delete = True
            processLabel(assemblyCode[i], i)
            
        if delete:
            nLines -= 1
            assemblyCode.remove(assemblyCode[i])
        else:
            i += 1
    return labels
            
def defineImmediate(strImm):
    """sets the correct int value for a label. whether the immediate is just a string integer or a label."""
    strImm = strImm.replace("[", "")
    strImm = strImm.replace("]", "")
    try:
        return int(strImm)
    except(ValueError):
        return searchLabels(strImm)
    
def searchLabels(strLabel):
    """searches the global labels for a matching label"""
    global labels
    for i in range(len(labels)):
        if labels[i].value == strLabel:
            return labels[i].address
    print("bad label: '" + strLabel + "'")
    raise UndeclaredLabelException(strLabel)

def processLabel(codeLine, address):
    """adds a label to the global label list """
    global labels
    codeLine = codeLine.replace(":", "")
    labels.append(Label(codeLine, address))

def processPseudoInstruction(pInst, instructionList):
    regAt = 0b011
    if pInst[0] == "lui":
        imm = int(pInst[1])
        returnedInst = pseudoInstructions.lui(imm)
    elif pInst[0] == "swap":
        reg1 = interperate_register(pInst[1])
        reg2 = interperate_register(pInst[2])
        returnedInst = pseudoInstructions.swap(reg1, reg2, regAt)
    elif pInst[0] == "jal":
        imm = int(pInst[1])
        returnedInst = pseudoInstructions.jal(imm, regAt, len(instructionList))
    elif pInst[0] == "move":
        reg1 = interperate_register(pInst[1])
        reg2 = interperate_register(pInst[2])
        returnedInst = pseudoInstructions.move(reg1, reg2, regAt)
    instructionList += returnedInst
        
def print_display(instructionList, assemblyCode):
    
    if (len(instructionList) != len(assemblyCode)):
        print("could not print")
        return
    
    for i in range(len(instructionList)):
        address = "0x" + hex(i)[2:].rjust(5, "0")
        binary = bin(instructionList[i])[2:].rjust(16, "0")
        print(address, " - ", binary, " - ", assemblyCode[i])
            
def setOpAndFunc(instruction, assembly):
    """sets the op code and func code for the given instruction"""

    instruction.setOpCode(getOpCode(assembly[0]))
    if instruction.opCode == 0:
        instruction.setFuncCode(getFuncCode(assembly[0]))
        if instruction.funcCode == 0b0111:
            instruction.type = 3 # jr type
        else:
            instruction.type = 1 # R-type
            
    else:
        print("op code:", instruction.opCode)
        if instruction.opCode == 3 or instruction.opCode == 2 or instruction.opCode == 5 or instruction.opCode == 6: # if it's a branch or lw/sw
            instruction.type = 2
        else:
            instruction.type = 0
        
def getOpCode(strOp):
    
    if strOp == "addi":
        return 0b0001
    elif strOp == "beq":
        return 0b0010
    elif strOp == "bne":
        return 0b0011
    elif strOp == "j":
        return 0b0100
    elif strOp == "lw":
        return 0b0101
    elif strOp == "sw":
        return 0b0110
    elif strOp == "li":
        return 0b1000
    elif strOp == "ori":
        return 0b1001
    elif strOp == "andi":
        return 0b1010
    elif strOp == "nori":
        return 0b1011
    elif strOp == "sll":
        return 0b1100
    elif strOp == "srl":
        return 0b1101
    elif strOp == "sra":
        return 0b1110
    elif strOp == "slti":
        return 0b1111
    
    # check for pseodoInstructions
    elif strOp == "jal":
        raise PseudoInstructionException(0)
    elif strOp == "swap":
        raise PseudoInstructionException(1)
    elif strOp == "lui":
        raise PseudoInstructionException(2)
    elif strOp == "move":
        raise PseudoInstructionException(3)
    
    
    else:
        return 0b0000
    
def getFuncCode(strOp):
    if strOp == "add":
        return 0b0000
    elif strOp == "and":
        return 0b0001
    elif strOp == "or":
        return 0b0010
    elif strOp == "xor":
        return 0b0011
    elif strOp == "nor":
        return 0b0100
    elif strOp == "copy":
        return 0b0110
    elif strOp == "jr":
        return 0b0111
    elif strOp == "slt":
        return 0b1001
    elif strOp == "lui":
        return 0b1010
    else:
        raise UnknownCommandException
        
def interperate_register(strReg):
    """takes a string representation of a register, and returns the 3 bit address of that register"""
    strReg = strReg.replace(",", "") # removes commas from the register
    strReg = strReg.replace("$", "")
   
    if strReg == "m":
        return 0b000
    elif strReg == "ra":
        return 0b001
    elif strReg == "sp":
        return 0b010
    elif strReg == "at":
        return 0b011
    elif strReg == "t0":
        return 0b100
    elif strReg == "t1":
        return 0b101
    elif strReg == "t2":
        return 0b110
    elif strReg == "s0":
        return 0b111
    else:
        raise RegisterNotFoundException


if __name__ == "__main__":
    main()