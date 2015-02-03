import unittest
from label import Label
from assembler import extractLabels

class Test04(unittest.TestCase):
    
    def testA(self):
        
        assemblyCode = ["addi 5",
                        "",
                        "spin:",
                        "",
                        "add $m, $t0",
                        "suckers:",
                        "j 800",
                        "jr $ra",
                        ""]
        expected = ["addi 5",
                    "add $m, $t0",
                    "j 800",
                    "jr $ra"]
        expectedLabels = [Label("spin", 1), Label("suckers", 2)]
        
        returnedLabels = extractLabels(assemblyCode)
        willPass = True
        for i in range(len(expected)):
            if expected[i] != assemblyCode[i]:
                print("code incorrect at line", i)
                willPass = False
                
        for k in range(len(returnedLabels)):
            if returnedLabels[k].value != expectedLabels[k].value:
                print("labels incorrect at", i) 
                willPass = False
            elif returnedLabels[k].address != expectedLabels[k].address:
                print("labels incorrect at", i) 
                willPass = False
                
        self.assertTrue(willPass)
    
    
    