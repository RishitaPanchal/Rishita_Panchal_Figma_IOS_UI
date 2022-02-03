//MARK:  Create a program for shopping cart. If desired quantity for an item is not available, throw exception

enum ErrorHandling: Error {
    
    case insufficientQuantity

}

func shoppingCart(item: String, qty: Int) throws {
    if qty >= 5 {
        throw ErrorHandling.insufficientQuantity
    } else {
        print("\(qty) no. of \(item) are available")
    }
}

do {
    try shoppingCart(item: "Croptop", qty: 1)
    try shoppingCart(item: "Jeans", qty: 3)
    try shoppingCart(item: "Towel", qty: 7)
 
} catch ErrorHandling.insufficientQuantity {
    print("Desired quantity for cart item is not available")
}



