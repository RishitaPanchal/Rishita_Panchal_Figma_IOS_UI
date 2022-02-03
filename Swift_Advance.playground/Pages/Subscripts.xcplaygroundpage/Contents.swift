struct Incrementer {
    
    var number = 20
    subscript(by: Int) -> Int {
        return number + by
    }
    
}

var incrementer = Incrementer()
print(incrementer[2])

struct SimpleIntrest {
    
    let intrest: Int
    subscript(amount: Int, time: Int) -> Int {
        return (intrest * amount * time) / 100
    }
    
}

var simpleIntrest = SimpleIntrest(intrest: 15)
print(simpleIntrest[3000, 2])

struct TowDArray {
    
    var matrix = [
                    [1,1,1,1],
                    [2,2,2,2],
                    [3,3,3,3],
                    [4,4,4,4],
                 ]
    
    subscript(row: Int, col: Int) -> Int? {
        let number = matrix[row][col]
        return number
    }
    
}

var matrixX = TowDArray()
print(matrixX.matrix.count)
print(matrixX[2, 3])
