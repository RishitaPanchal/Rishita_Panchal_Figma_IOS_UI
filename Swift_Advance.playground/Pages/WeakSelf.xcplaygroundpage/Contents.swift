
class Animal {
    var name: String
    var age: (() -> Void)?
    
    init(name: String) {
        self.name = name
    }
    
    func printName() {
        age = { [weak self] in
            print(self?.name)
        }
    }
    
    deinit {
        print("DEINIT: Animal")
    }
}

var animal: Animal?
animal = Animal(name: "Dog")
animal?.printName()
animal = nil
