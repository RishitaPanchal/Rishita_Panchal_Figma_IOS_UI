//MARK: Dictionary excercise 3
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
var fullNamee: [String] = []

for index in people.indices {
    let firstName = people[index]["firstName"] ?? "Nil"
    let lastName = people[index]["lastName"] ?? "Nil"
    fullNamee.append(firstName + lastName)
}
print("Full names : ", fullNamee)
