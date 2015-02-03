from exceptions import UnknownCommandException
from exceptions import RegisterNotFoundException


class Instruction():
    
    def __init__(self):
        self.inst = 0
        self.opCode = None
        self.funcCode = None
        self.reg1 = None
        self.reg2 = None
        self.immediate = None
        self.type = -1
        """an int value represents the different instruction formats as follows
        -1 denotes no type (has not been set yet)
        0 I-type
        1 R-type
        2 IR-type
        3 JR-type
        """
    
    def setOpCode(self, op):
        """takes an op code, shifts then adds it to the instruction"""
        self.opCode = op
        
    def setFuncCode(self, func):
        self.funcCode = func
        
    def setRegister(self, strReg):        
        if self.reg1 == None:
            self.reg1 = interperate_register(strReg)
            return
        self.reg2 = interperate_register(strReg)
    
    def setImmediate(self, imm):
        self.immediate = imm
        
    def compile(self):
        """complies the instruction, returning a 16 bit integer instruction."""
        self.inst = self.opCode
        self.inst = self.inst << 12
        if self.type == 0:
            self._compileI_()
        elif self.type == 1:
            self._compileR_()
        elif self.type == 2:
            self._compileIR_()
        elif self.type == 3:
            self._compileJR_()
        
        return self.inst
        
    def _compileI_(self):
        """compiles I-type"""
        self.inst = self.inst + self.immediate
         
    def _compileR_(self):
        """compiles R-type"""
        self.inst = self.inst + (self.reg1 << 9)
        self.inst = self.inst + (self.reg2 << 6)
        self.inst = self.inst + (self.funcCode << 2)
         
    def _compileIR_(self):
        """compiles IR-type"""
        
        self.inst = self.inst + (self.reg1 << 9)
        self.inst = self.inst + (self.immediate)
         
    def _compileJR_(self):
        """compiles JR-type"""

        self.inst = self.inst + (self.reg1 << 9)
        self.inst = self.inst + (self.funcCode << 2)
      
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
