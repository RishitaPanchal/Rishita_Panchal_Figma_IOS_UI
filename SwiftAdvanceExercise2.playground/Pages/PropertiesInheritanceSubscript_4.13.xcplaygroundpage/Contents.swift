//MARK: 13)  Create one example of subscript using array. Create one array of weekdays and one subscript func which takes int as argument and returns day of week

class DayOfWeek {
    
    var day: String?
    var weekDays: [String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
   
    subscript(index: Int) -> String {
        if 0...7 ~= index {
            day = weekDays[index]
        } else {
            print("Invalid input")
        }
        return day ?? "nil"
    }

}

var days = DayOfWeek()
print(days[6])

