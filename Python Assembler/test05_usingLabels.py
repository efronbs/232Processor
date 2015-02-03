import unittest
import assembler
from TESTcompareList import compareLists


class Test05(unittest.TestCase):
    
    def testA(self):
        assemblyCode = ["j End",
                        "",
                        "happyPills:",
                        "",
                        "copy $m, $at",         # store argument in $at
                        "copy $ra, $m",          # load return address
                        "sw $sp [0]",             # store return address in memory
                        "copy $sp, $m",         # load stack pointer
                        "addi 1",                # update stack pointer
                        "",
                        "copy $m, $sp",          # store new stack pointer
                        "li 11",                 # load the address of the (current line + 4) to set new $ra, (done in assembler)
                        "copy $m, $ra",          # sets $ra to the new return address
                        "copy $at, $m",          # restores the argument to the main reg from $at. 
                        "j happyPills",
                        "",
                        "End:"]
        expectedMachineCode = [0b0100000000001011,
                               0b0000000011011000,
                               0b0000001000011000,
                               0b0110010000000000,
                               0b0000010000011000,
                               0b0001000000000001,
                               0b0000000010011000,
                               0b1000000000001011,
                               0b0000000001011000,
                               0b0000011000011000,
                               0b0100000000000001]
        
        instList = assembler.process_code(assemblyCode)
        willPass = compareLists(instList, expectedMachineCode)
        self.assertTrue(willPass)

