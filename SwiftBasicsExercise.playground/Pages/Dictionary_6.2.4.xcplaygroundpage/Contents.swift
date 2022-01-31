//MARK: Dictionary excercise 4
var people: [[String: Any]] = [
                               [
                                "firstName": "Calvin",
                                "lastName": "Newton",
                                "score": 13
                               ],
                               [
                                "firstName": "Garry",
                                "lastName": "Mckenzie",
                                "score": 12
                               ],
                               [
                                "firstName": "Leah",
                                "lastName": "Rivera",
                                "score": 10
                               ],
                               [
                                "firstName": "Sonja",
                                "lastName": "Moreno",
                                "score": 3
                               ],
                               [
                                "firstName": "Noel",
                                "lastName": "Bowen",
                                "score": 16
                               ]
                              ]

var score: [Int] = []
var minScore = people[0]["score"] as? Int
var index: Int = 0

for i in people.indices {
    let anotherItem = people[i]["score"] as? Int
    if (minScore ?? 0 > anotherItem ?? 0) {
        minScore = anotherItem
        index = i
    }
}

let firstName = people[index]["firstName"] ?? "Nil"
let lastName = people[index]["lastName"] ?? "Nil"
print("Person with lowest score \(minScore ?? 0) is : \(firstName) \(lastName)")
