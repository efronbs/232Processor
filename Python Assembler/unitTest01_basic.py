from TESTcompareList import compareLists
import assembler
import unittest

class TestSet01(unittest.TestCase):
    
    def testA(self):
        assemblyCode = ["addi 10",            # 0001 000000001010
                    "add $m, $sp",        # 0000 0000 000 010 XX
                    "bne $t0, 100",        # 0011 100 001100100
                    "beq $t0, 101",        # 0010 100 001100101
                    "ori 15",            # 1001 000000001111
                    "or $m, $t0",        # 0000 0010 000 100 XX
                    "j 311",            # 0100 000100110111
                    "jr $m"]            # 0000 0111 XXXXXXXX
        expected = [0b0001000000001010,
                    0b0000000010000000,
                    0b0011100001100100,
                    0b0010100001100101,
                    0b1001000000001111,
                    0b0000000100001000,
                    0b0100000100110111,
                    0b0000000000011100]
        
        instList = assembler.process_code(assemblyCode)
        willPass = compareLists(instList, expected)
        self.assertTrue(willPass)
"""        
def main():
    
    t = TestSet01()
    t.test01()
    
if __name__ == "__main__":
    main()"""
    