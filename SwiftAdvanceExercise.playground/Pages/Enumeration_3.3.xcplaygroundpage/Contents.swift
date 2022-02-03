//MARK:  Write a swift program using enumerations to demonstrate Int enum

enum DaysInWeek: Int {
    
    case Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday

}

func getDetails(day: DaysInWeek) {
    print("Day \(day.rawValue) in a week is : \(day) ")
}

getDetails(day: DaysInWeek.Wednesday)
getDetails(day: DaysInWeek.Sunday)
getDetails(day: DaysInWeek.Monday)


