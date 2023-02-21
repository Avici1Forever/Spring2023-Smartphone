import UIKit

let name = "Karl"
let age = 22

var emptyArray: [Int] = []

// Ternary Operator
var howOldAreYou = age > 60 ? "experienced" : "young"

print(name)

print(howOldAreYou)

// String Interpolation

let helloString = "Hello \(name), welcome to the class."
let helloString2 = "Hello " + name + ", welcome to the class again."

print(helloString)
print(helloString2)

// Collection Types
// Array
var friends: [String] = []

friends.append("狗佳丽")
friends.append("小钟")
friends.append("李蘑古力")
friends.append("黑白狗")
friends.remove(at: 3)
print(friends.endIndex)

for friend in friends {
    print(friend)
}

for (index, friend) in friends.enumerated() {
    print("Name = \(friend), Index = \(index)")
}

// Set

var foodItemsEmpty = Set<String>()

var foodItemsInitialized: Set<String> = ["Pizza", "Burger", "Salad"]

var foodItemsInitializedInferred: Set = ["Pizza", "Burger", "Salad"]

foodItemsEmpty.insert("Pizza")
foodItemsEmpty.insert("Burger")
foodItemsEmpty.insert("Salad")

print(foodItemsEmpty.contains("Burger"))

for food in foodItemsEmpty {
    print(food)
}

for food in foodItemsEmpty.sorted() {
    print(food)
}

// Dictionary
var countryDetailsInferred = [
    "CN": "China",
    "IN": "India",
    "US": "United States",
    "CA": "Canada",
]

countryDetailsInferred.removeValue(forKey: "US")
for (countryKey, countryName) in countryDetailsInferred {
    print("countryKey = \(countryKey), countryName = \(countryName)")
}

let letter = "a"

switch letter {
case "a", "A":
    print("This is letter a.")
case "b":
    print("This is letter b.")
case "c":
    print("This is letter c.")
default:
    print("This is default.")
}

// Optional ?
var myInt: Int?
myInt = 5
// if let  (only run when myInt exists and initialized)
if let myInt = myInt {
    let multipliedBy5 = myInt * 5
    print(multipliedBy5)
}

func rich() {
    print("黑白狗 will be rich.")
}

rich()

func richWithName(_ name1: String, name2: String) {
    print("\(name1) and \(name2) will be rich.")
}

richWithName("黑白狗", name2: friends[0])

func getFullName(_ firstName: String, _ lastName: String) -> String{
    return "\(lastName)\(firstName)"
}

print(getFullName("佳丽", "李"))

func incrementByOne(_ a: inout Int) {
    a += 1
}

var a = 5

incrementByOne(&a)

print(a)

// Structures

struct User {
    let name: String
    var age: Int
    
    func getAge() -> Int {
        return age
    }
}

var Karl = User(name: "Karl", age: 21)

print(Karl.getAge())

// Enums

enum ColorEnum {
    case red
    case blue
    case black
    case yellow
}

print(ColorEnum.red)

enum IntEnum : Int {
    case one = 1
    case two
    case four
}

print(IntEnum.four.rawValue)

enum CityEnum : String {
    case WF = "Weifang"
    case SEA = "Seattle"
    case NY = "New York"
    case MAN = "Manchester"
}

print(CityEnum.MAN.rawValue)

// Class

class UserClass {
    let firstName: String
    let lastName: String
    var age: Int
    func getFullName() -> String {
        return "\(lastName)\(firstName)"
    }
    // Constructor  (self = this)
    init(firstName : String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
 }

var KarlClass = UserClass(firstName: "狗", lastName: "黑白", age: 22)

print(KarlClass.getFullName())

