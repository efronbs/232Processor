
def compareLists(instList, expected):
    """compares the two given lists, returning true if they are the same, and printing anywhere they are different"""
    willPass = True
        
    for i in range(len(instList)):
        if (instList[i] != expected[i]):
            print("failure at address 0x" + hex(i)[2:].rjust(5, "0"))
            willPass = False
    return willPass
