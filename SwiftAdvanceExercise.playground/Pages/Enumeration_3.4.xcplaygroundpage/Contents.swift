//MARK:  Write a swift program to demonstrate string type enum.

enum DayOfWeek: String {
    
    case one = "Moday or mon"
    case two = "Tuesday or tue"
    case three = "Wednesday or wed"
    case four = "Thursday or thurs"
    case five = "Friday or fri"
    case six = "Saturday or sat"
    case seven = "Sunday or sun"

}

print("Day 1 :", DayOfWeek.one.rawValue)
