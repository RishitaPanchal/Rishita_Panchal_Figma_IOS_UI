// Program 1
print("\n1-->")
var baconAge = 10
var eggAge = 23
if baconAge <= 7 && eggAge <= 21 {
    print("You can cook bacon abd egg")
} else if baconAge >= 7 && eggAge <= 21 {
    print("Throw out bacon from fridge")
} else if baconAge <= 7 && eggAge >= 21 {
    print("Throw out eggs from fridge")
} else {
    print("You can throw out both bacon and eggss")
}

//Program 2
print("\n2-->")
var year = 2023
if year % 400 == 0 && year % 100 != 0 {
    print("Leap year")
} else if year % 4 == 0 {
    print("Leap year!")
} else {
    print("Not a leap year")
}

//Program 3
print("\n3-->")
var hp = 75
var num = 0
var rem = hp % 10
print("Input :", hp)

if hp == 0 {
    print("He's dead")
} else if rem == 0 {
    print("HP after regenerating health : ", hp)
} else if rem != 0 && hp > 20 {
    hp = (hp / 10) + 1
    hp *= 10
    print("HP after regenerating health : ", hp)
} else if hp < 20 {
    hp = 20
    print("HP after regenerating health : ", hp)
}

//Program 4
print("\n4-->")
var grade1 = 7.0
var grade2 = 9.0
var grade3 = 5.0
var yourGrade = 8.0

var average = (grade1 + grade2 + grade3 + yourGrade) / 4
print(average)
if yourGrade > average {
    print("Above average")
} else {
    print("Below average")
}

//Program 5
print("\n5-->")
var mealCost: Double = 3.5
var tip: Int = 20
var percentToDecimal = (20 / 100) * mealCost
var totalCost = 3.5 + percentToDecimal
print(totalCost)
