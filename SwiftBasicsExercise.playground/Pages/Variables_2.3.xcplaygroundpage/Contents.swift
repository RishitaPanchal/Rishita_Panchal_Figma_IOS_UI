// MARK: There is one constant with value of interest rate (15%) create one playground for calculate interest for given amount and duration 
let rate: Float = 15
var amount: Float = 5400
var time: Float = 3
simpleIntrest(rate, amount, time)

amount = 1200
time = 2
simpleIntrest(rate,amount,time)

amount = 1500
time = 4
simpleIntrest(rate,amount,time)

func simpleIntrest(_ rate: Float, _ amount: Float, _ time: Float) {
    print((rate * amount * time) / 100)
}

