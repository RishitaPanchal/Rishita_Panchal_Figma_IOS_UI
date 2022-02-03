//MARK: Perform same example given in class question no 10 and check output using structure. Try to find difference between these two outputs and try to figure out the reason for that
struct Example {
    
    var a: String
    init(a: String) {
        self.a = a
    }
    
}

let example = Example(a: "Hello")
print(example.a)

let example1 = example
//var example1 = example It is allow you to change property of struct
//ERROR : example1.a = "Hi"
print(example1.a)



/*Reason
    The reason you can change a mutable property of a let constant class instance, is due to the fact that classes are reference types. Therefore being a let constant only ensures that the reference stays the same. Mutating their properties doesn't in any way affect your reference to them – you're still referring to the same location in memory.
 */
