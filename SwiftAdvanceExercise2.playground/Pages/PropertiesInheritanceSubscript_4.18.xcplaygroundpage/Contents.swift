class Person {
    
    enum personDetails: String {
    
        case name = "Rishita"
        case age = "21"
        case bdate = "27th-july"
    
    }
    var details = [String]()
    
    subscript (name: String) -> [String] {
        
        if name == personDetails.name.rawValue {
            details.append(personDetails.name.rawValue)
            details.append(personDetails.age.rawValue)
            details.append(personDetails.bdate.rawValue)
        } else {
            print("No name found!!")
        }
        return details
    
    }

}

var p = Person()
p["Rishita"]
print(p.details)
