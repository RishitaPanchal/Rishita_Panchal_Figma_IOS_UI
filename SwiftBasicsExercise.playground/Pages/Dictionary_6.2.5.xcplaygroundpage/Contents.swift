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
for index in people.indices {
    let firstName = people[index]["firstName"] ?? "Nil"
    let lastName = people[index]["lastName"] ?? "Nil"
    let score = people[index]["score"] ?? "nil"
    print("\(index) . \(firstName) \(lastName) - \(score)")
}

