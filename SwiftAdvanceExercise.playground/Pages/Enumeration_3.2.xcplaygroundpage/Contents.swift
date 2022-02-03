//MARK: reate one enumeration program to return number of days in a month.

enum Months {
    
    case January, February, March, April, May, June, July, August, September, October, November, December

}

func daysInMonth(month: Months) -> String {
    switch month {
        case .January, .March, .May, .July, .August, .October, .December:
            return "31"
        case .February:
            return "28 or 29"
        case .April, .June, .September, .November:
            return "30"
    }
}

let month = Months.February
print("\(month) : \(daysInMonth(month: month)) days")
