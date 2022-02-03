//MARK: Write swift program using enumerations to check week day from given number. Consider Monday as 1 and Sunday as 7. We can be able to get day name as string in short form (sun, mon,...) and same full name (Sunday, Monday...) by given number of the day. Example. It should return Monday or mon if I pass parameter 1 for get day name.

// By using raw valuess
enum DayOfWeek: String {
    
    case one, two, three, four, five, six, seven

    func getDay() -> String {
        switch self {
            case .one:
                return "Monday or Mon"
            case .two:
                return "Tuesday or Tues"
            case .three:
                return "Wednesday or wed"
            case .four:
                return "Thursday or Thurs"
            case .five:
                return "Friday or Fri"
            case .six:
                return "Saturday or Sat"
            case .seven:
                return "Sunday or Sun"
        }
    }
    
}

print("Choice :", DayOfWeek.two.getDay())

