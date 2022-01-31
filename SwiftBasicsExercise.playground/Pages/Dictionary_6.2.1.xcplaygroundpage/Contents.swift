//MARK: Dictionary excercise 1
var code = [
             "a" : "b",
             "b" : "c",
             "c" : "d",
             "d" : "e",
             "e" : "f",
             "f" : "g",
             "g" : "h",
             "h" : "i",
             "i" : "j",
             "j" : "k",
             "k" : "l",
             "l" : "m",
             "m" : "n",
             "n" : "o",
             "o" : "p",
             "p" : "q",
             "q" : "r",
             "r" : "s",
             "s" : "t",
             "t" : "u",
             "u" : "v",
             "v" : "w",
             "w" : "x",
             "x" : "y",
             "y" : "z",
             "z" : "a"
          ]

let inputStr = "uijt nfttbhf jt ibse up sfbe"
var decode = [String: String]()

for (key, value) in code {
    decode[value] = key
}

// Decode message
var decodedMessage = " "
inputStr.forEach { char in
        decode.forEach { (key, val) in
            if String(char) == String(key) {
                if let dummy = decode[key] {
                    decodedMessage.append(dummy)
                } else{
                    print("Nil")
                }
            }
        }
    if String(char) == " " {
        decodedMessage.append(" ")
    }
}
print(decodedMessage)
