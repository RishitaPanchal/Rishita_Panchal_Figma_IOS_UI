//MARK: I have one integer array and create one function which takes range as input and returns all elements between the range.

func rangeOfElement(range: Range<Int>) {
    let array = ["Apple", "Banana", "Cherry"]
    print(range.endIndex)
    
    if array.count > range.startIndex && array.count < range.endIndex{
        print("Out of bound")
    } else {
        for element in range {
            print(array[element])
        }
    }
}

rangeOfElement(range: 1..<4)
