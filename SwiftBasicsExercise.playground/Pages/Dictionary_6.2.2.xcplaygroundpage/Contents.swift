//MARK: Dictionary excercise 2
var people: [[String: String]] = [
                                    [
                                        "firstName": "Calvin ",
                                        "lastName": "Newton"
                                    ],
                                    [
                                        "firstName": "Garry ",
                                        "lastName": "Mckenzie"
                                    ],
                                    [
                                        "firstName": "Leah ",
                                        "lastName": "Rivera"
                                    ],
                                    [
                                        "firstName": "Sonja ",
                                        "lastName": "Moreno"
                                    ],
                                    [
                                        "firstName": "Noel ",
                                        "lastName": "Bowen"
                                    ]
                                 ]
var firstName: [String] = []

for index in people.indices {
    firstName.append(people[index]["firstName"] ?? "Nil")
}
print("Full names : ", firstName)
