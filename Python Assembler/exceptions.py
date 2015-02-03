

class RegisterNotFoundException(Exception):
    """this exception is thrown when a string does not match any of the known registers for this language."""
    
class UnknownCommandException(Exception):
    """this exception is thrown when a nonexistant command is used."""
    
class PseudoInstructionException(Exception):
    
    def __init__(self, code):
        self.code = code
        
class UndeclaredLabelException(Exception):
    """this exception is thrown when a label is used but has not been declared."""
    def __init__(self, label):
        self.badLabel = label
    def __repr__ (self):
        return "bad label: '" + self.badLabel + "'"