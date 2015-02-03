from TESTcompareList import compareLists
import assembler
import unittest



class Test03(unittest.TestCase):
    
    def testA(self):
        assemblyCode = ["lui 10", "swap $t2, $m", "move $m, $t0", "move $t0, $m", "jal 45"]            # 0000 0111 XXXXXXXX
        expected = [0b1000000000001010, # li 10    
                    0b1100000000000100, # shift
                    0b0000110011011000, # copy (swap1)        
                    0b0000110000011000, # copy (swap2)        
                    0b0000011110011000, # copy (swap3)        
                    0b0000000100011000, # copy move1        
                    0b1000000000000000, # li 0 move1        
                    0b0000100000011000, # copy move2
                    0b0000000011011000, # copy $at move2
                    0b1000000000000000, # li 0
                    0b0000000100011000, # copy    move2
                    0b0000011000011000, # copy     move2
        
                    0b0000000011011000,
                    0b0000001000011000,
                    0b0110010000000000,
                    0b0000010000011000,
                    0b0001000000000001,
                    0b0000000010011000, # ERROR
                    0b1000000000010111, # 23
                    0b0000000001011000,
                    0b0000011000011000,
                    0b0100000000101101]
        
        instList = assembler.process_code(assemblyCode)
        willPass = compareLists(instList, expected)
        self.assertTrue(willPass)
    

if __name__ == "__main__":
    t = Test03()
    t.testA()