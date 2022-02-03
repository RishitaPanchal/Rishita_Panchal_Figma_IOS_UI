enum vowelsString: String {
    case a, e, i, o, u
}
//Automtically takes raw value starting from 0
let stringVowel = vowelsString.i.rawValue
print("Raw value for String i is:", stringVowel)

enum vowels: Int {
    case a, e, i, o, u
}
//Automtically takes raw value starting from 0
let intVowel = vowels.i.rawValue
print("Raw value for integer i is:", intVowel)

print("\nSwitch case for vowels : ")
var choice = vowels.o
switch choice{
    case .a:
        print("Choosen vowel is :A")
    case .e:
        print("Choosen vowel is :E")
    case .o:
        print("Choosen vowel is :O")
    default:
        print("Invalid choicde")
}

//Enum with caseiterable
enum daysOfWeek: String, CaseIterable {
    case sunday
    case monday = "mon"
    case tuesday = "tue"
    case wednesday = "wed"
    case thursday = "thurs"
    case friday = "fri"
    case saturday = "sat"
}
let rawValOfDay = daysOfWeek.sunday.rawValue
print("\nRaw value of monday is : ", rawValOfDay)
print("\nSwitch case for weekdays : ")

func weekendOrNot(day: daysOfWeek) {
    switch day {
        case .saturday, .sunday:
            print("Hey its a weekend!!")
        default:
            print("Working day!")
    }
}
weekendOrNot(day: .monday)

print("\nTotal number of days are: ", daysOfWeek.allCases.count)

for day in daysOfWeek.allCases{
    print("Day : ", day)
}

//Associated value
enum car{
    case suv(price: Double)
    case sedan(price: Int)
    case luxury(price: Double)
}
let cSuv = car.suv(price: 567000)
print(cSuv)

