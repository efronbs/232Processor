


class Label():
    
    def __init__(self, value, address):
        self.value = value
        self.address = address
        
    def __repr__(self):
        return hex(self.address).ljust(5, " ") + self.value