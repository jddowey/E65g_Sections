//: ## Protocols and Extensions

//: protocols
protocol ExampleProtocol {
     var simpleDescription: String { get }
     mutating func adjust()
}

//: Who can conform to protocols?
class SimpleClass: ExampleProtocol {
     var simpleDescription: String = "A very simple class."
     var anotherProperty: Int = 69105
     func adjust() {
          simpleDescription += "  Now 100% adjusted."
     }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
     var simpleDescription: String = "A simple structure"
     mutating func adjust() {
          simpleDescription += " (adjusted)"
     }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

//: - Experiment:
//: Write an enumeration that conforms to this protocol.

//: type extensions
extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
 }
print(7.simpleDescription)

//: - Experiment:
//: Write an extension for the `Double` type that adds an `absoluteValue` property.

//: Using protocols as types
let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
// print(protocolValue.anotherProperty)  // Uncomment to see the error


//: [Previous](@previous) | [Next](@next)
