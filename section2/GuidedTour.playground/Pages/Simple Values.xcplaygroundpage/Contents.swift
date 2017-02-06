
print("Hello, world!")

var myVariable = 42
myVariable = 50
let myConstant = 42

//:
//: Constants and Variables
//:
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

//: - Experiment:
//: Create a constant with an explicit type of `Float` and a value of `4`.
//:
//: Value Conversion (Never Implicit)
//:
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

//: - Experiment:
//: Try removing the conversion to `String` from the last line. What error do you get?
//:
//: String Interpolation
//:
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

//: - Experiment:
//: Use `\()` to include a floating-point calculation in a string and to include someone’s name in a greeting.
//:
//: Arrays and Dictionary Inline Creation
//:
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
 ]
occupations["Jayne"] = "Public Relations"

//: Initialization Syntax
//:
let emptyArray = [String]()
let emptyDictionary = [String: Float]()

//: Works with type inference to create empty arrays and dicts
//:
shoppingList = []
occupations = [:]



//: See [License](License) for this sample's licensing information.
//: 
//: [Next](@next)
