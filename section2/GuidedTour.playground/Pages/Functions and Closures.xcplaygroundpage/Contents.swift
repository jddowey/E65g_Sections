//: ## Functions and Closures
//:
//: Function Definition
//:
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")

//: - Experiment:
//: Remove the `day` parameter. Add a parameter to include today’s lunch special in the greeting.

//: Argument Labels vs. Parameter Names
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")

//: "Multiple Return Values"
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

//: Variadic Arguments
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(numbers: 42, 597, 12)

//: - Experiment:
//: Write a function that calculates the average of its arguments.

//: Nested Functions
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

//: Functions as parameters and return values
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

//: Inline closures
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

//: - Experiment:
//: Rewrite the closure to return zero for all odd numbers.

//: Omitting types and implicit return value
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

//: Parameters by number and omittings function parentheses
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)



//: [Previous](@previous) | [Next](@next)
