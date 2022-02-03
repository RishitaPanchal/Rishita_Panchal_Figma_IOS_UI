//MARK: 5) Write a swift program for enum with raw values.
//MARK: 8) 
enum CardTypes: String {
    
    case clubs = "♣️"
    case spade = "♠️"
    case dimonds = "♦️"
    case hearts = "♥️"

}

print("Club card : ", CardTypes.clubs.rawValue)
print("Heart card : ", CardTypes.hearts.rawValue)
print("Spade card : ", CardTypes.spade.rawValue)
print("Dimond card : ", CardTypes.dimonds.rawValue)
