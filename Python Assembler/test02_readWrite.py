from assembler import readCodeFromFile


def main():
    
    testFile = "testData/01_testData.txt"
    writeDest = "testData/01_testResults.txt"
    expDest = "testData/01_expectedResults.txt"
    readCodeFromFile(testFile, writeDest)
    
    expected = open(expDest, "r")
    expectedText = expected.read().split("\n")
    result = open(writeDest, "r")
    resultText = result.read().split("\n")
    
    
    if expectedText == resultText:
        print("success")
    else:
        print("fail:")
        print("expected          -        result   ")
        for i in range(len(resultText)):
            pass
            print(expectedText[i], " - ", resultText[i])
    

if __name__ == "__main__":
    main()