//MARK: Create a swift class with some property. And then set its value using initializer of class, then perform below actions.
class Example {
    
    var a: String
    init(a: String) {
        self.a = a
    }
    
}

let example = Example(a: "Hello")
print(example.a)

let example1 = example
example1.a = "Hi"
print(example1.a)


/*Reason
  The reason you can change a mutable property of a let constant class instance, is due to the fact that classes are reference types. Therefore being a let constant only ensures that the reference stays the same. Mutating their properties doesn't in any way affect your reference to them – you're still referring to the same location in memory.
 */
