//MARK: Create one example of usage of willSet and didSet

func propertyObserverDemo(_ newName: String) {
    var name = "Hiral" {
        willSet {
            print("Old name: \(newValue), Current name: \(name)")
        } didSet {
            print("Old name: \(oldValue), Current name: \(name)")
        }
    }
    name = newName
}

propertyObserverDemo("Rishita")
