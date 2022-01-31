//MARK: What is turnery operator and show example of usage?

var cardType1 = "Black"
var cardType2 = "Spade"
var result1 = cardType1 == cardType2 ? "Both are of equal type" : "Both are of different type"
print("\(cardType1) & \(cardType2) : ", result1)

//Changing of inputs
cardType1 = "Spade"
cardType2 = "Spade"
result1 = cardType1 == cardType2 ? "Both are of equal type" : "Both are of different type"
print("\(cardType1) & \(cardType2) : ", result1)
