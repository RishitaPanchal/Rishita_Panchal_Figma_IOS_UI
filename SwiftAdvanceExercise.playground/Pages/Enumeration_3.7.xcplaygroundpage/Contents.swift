//MARK: 7) Write a swift program using enumerations for learn and demonsrate enum cases with parameters (Enum with associated values).
enum MenuItems {
    
    case margerita(size: String,price: Double)
    case cheezy7(size: String,price: Double)
    case fourCheese(size: String, price: Double, topping: Bool)
    case burnToHell(size: String, price: Double)

}

func chooseItem(item: MenuItems) -> String {
    switch item {
        case let .margerita(size, price):
            return "Margerita -> Size : \(size), Price : \(price)"
        case let .cheezy7(size, price):
            return "cheezy 7 -> \(size) size, Price : \(price)"
        case let .fourCheese(size, price, topping):
            return "Four cheese -> \(size) size, Price : \(price), Topping : \(topping)"
        case let .burnToHell(size, price):
            return "Burn to hell -> \(size) size, Price : \(price)"
    }
}

let margerita = MenuItems.margerita(size: "regular", price: 545)
let fourCheese = MenuItems.fourCheese(size: "Giant", price: 516.2, topping: true)
print(chooseItem(item: fourCheese))
