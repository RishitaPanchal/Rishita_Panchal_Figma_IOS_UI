struct Fruits {
    enum RedFruits: Character {
        case apple = "🍎", cherry = "🍒", watermelon = "🍉"
        enum FruitSize: Int {
            case small = 1, medium, large
        }
    }
    var fruitName: RedFruits?
    var fruitSize: RedFruits.FruitSize?
    func details() {
        print("Fruit name : \(fruitName?.rawValue), Size of fruit : \(fruitSize?.rawValue)")
    }
}

print("Raw value of appple : ", Fruits.RedFruits.apple.rawValue)
print("Raw value of appple : ", Fruits.RedFruits.FruitSize.small.rawValue)
var fruit = Fruits()
fruit.fruitName = Fruits.RedFruits.apple
fruit.fruitSize = Fruits.RedFruits.FruitSize.small
fruit.details()
