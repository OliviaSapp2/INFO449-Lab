import UIKit


let age = 20

//If Else
if  age >= 21 {
    print("Old ebough to drink")
}
else if age >= 18 {
    print("Old enough to vote")
}
else{
    print("A child!")
}


// Gaurd
func greet(person: [String: String]) {
    guard let name = person["name"] else{
        return
    }
    guard let age = person["age"] else{
        print("Hi my name is \(name) and age \(age)")
return
    }
}
 
greet(person: ["name": "Olivia"])
greet(person: ["name": "Olivia", "age": "20"])


// Switch Simple
switch age {
    case 1, 2, 3, 4, 5, 6, 7, 8, 9 , 10:
    print("Not old enough to vote or drink")
  case 18, 19, 20:
    print("old enough to vote, but not to drink")
  default:
    print("Old enough to vote and drink")
}

// Writing all these numbers is tedious, lets make it easier
//Switch range
switch age {
case 0 ... 17:
    print("Not old enough to vote or drink")
case 18...20:
    print("old enough to vote, but not to drink")
  default:
    print("Old enough to vote and drink")
}


//Switch Where
switch age {
case let x where x == 18 :
    print("You are 18 years old")
case let x where x >= 21:
    print("You are older than 21")
case let x:
    print("You are \(x) years old")
}

// Lets wish you a happy birthday, for every year you are alive

//While loops
let age2 = 5

var index : Int = 1
while  index <= age2 {
  print("Happy \(index) Birthday")
    index += 1
}

//For loops
for index in 1...5{
  print("Happy Birthday you are \(index) years old")
}
for _ in 1 ... 5{
  print("Happy birthday to you")
}


////Arrays
// Wish a happy birthday to everyone who's birthday is today
let bornToday = ["Alice", "Bob", "Charlie", "Malik", "Terra"]

//wisha happy birthday only to Alice
print("Happy Birthday \(bornToday[0])!")

//now wisha happy birthday to everyone
print("Happy Birthday to: \(bornToday)!")

// use a For loop to wish everyone a happy birthday
for name in bornToday {
    print("happy birthday \(name)")
}

// Dictionaries are key-value pairs like hash maps in Java
var ages = [
    "Marge": "12",
    "Jannet": "25",
]
//add to the dictionary
ages["Kyla"] = "20"

print("Marge is \(ages["Marge"]!) years old")
print("These are my friends \(ages)")
    
// Use for-in over dictionaries
for (key, value) in ages {
  print("\(key) is \(value) years old")
}

//Enums
enum seasons {
    case Winter
    case Spring
    case Summer
    case Fall
}
enum months {
    case December, January, Febuary, March
}
    
var tempurature = seasons.Spring //change season.Spring, season.winter, summer, or fall
switch tempurature {
    case .Winter: print("Winter quarter at UW is dark")
    case .Spring: print("Spring at UW has Cherry Blossom trees")
    case .Summer : print("Many students go home for the summer")
    case .Fall : print("Fall at UW is when students come back to school")
}


//Tuples
var kyle = ("Kyle", 25)
print("This is: \(kyle)")
print("Hello my name is \(kyle.0) and I am \(kyle.1) years old")

kyle = ("Kyle", 26)
print("This is: \(kyle)")
print("Hello my name is \(kyle.0) and I am \(kyle.1) years old")

var Jess = ("Jess", 20, "SWE")
print("Hello my name is \(Jess.0) and I am \(Jess.1) years old, and I am a \(Jess.2))")

//Functions
//wish a happy birthday to some people

func happyBirthday(personName : String, personAge: Int) -> String {
    return "Happy Birthday, \(personName), you are \(personAge) years old!"
}
print(happyBirthday(personName:"Brad", personAge:5))

func yearOlder(currentAge: Int) -> Int {
    return currentAge + 1
}

print("\(yearOlder(currentAge:5))")
print(yearOlder(currentAge:5))

////So many ways to make a happy birthday function
//
//Anonymous functions
let happyBirthday2 = { (name: String, age: Int) -> String in return "Happy birthday \(name), you are \(age) years old!" }
print("\(happyBirthday2("Ned",50))")

//Inferred parameter types
let happyBirthday3 : (String, Int) -> String = { (name, age) in return "Happy birthday \(name), you are \(age) years old!"}
print("\(happyBirthday3("Ned",51))")

//Inferred return value
let happyBirthday4 : (String, Int) -> String = { (name, age) in "Happy birthday \(name), you are \(age) years old!" }
print("\(happyBirthday4("Ned",52))")

//Inferred parameter names
let happyBirthday5 : (String, Int) -> String = { "Happy birthday \($0), you are \($1) years old!" }
print("\(happyBirthday5("Ned",53))")


//Classes
class Pet {
    var name = ""
    var age = 0
    var animal = ""
    
    var about : String {
        get{
            return "\(name) is my \(animal) that is \(age) years old"
        }
    }
}

//lets initalize a dog, name it what you want
var Scout = Pet()
Scout.name = "Scout"
Scout.age = 4
Scout.animal = "Dog"
print("\(Scout.about)")

Scout.age += 1
print("\(Scout.about)")


class Pet2 {
    var petName = ""
    var petAge = 0
    var petType = ""
    
    weak var sibling : Pet2?

    init(name: String, age: Int, type: String) {
        petName = name
        petAge = age
        petType = type
  }
}

var bobo = Pet2(name: "Bobo", age: 1, type: "dog")
bobo.petAge += 1
var chichi = Pet2(name: "Chichi", age: 7, type: "cat")

print("My \(bobo.petType)'s name is \(bobo.petName) and they are \(bobo.petAge) years old.")
print("My \(chichi.petType)'s name is \(chichi.petName) and they are \(chichi.petAge) years old.")
bobo.sibling = chichi
chichi.sibling = bobo
print("\(bobo.petName)' sibling is \(bobo.sibling!.petName)")

//Methods
//like a function inside of a class
class Counter {
    var count = 0
 
    func increment() {
        count += 1
    }
 
    func increment(by amount: Int) {
        count += amount
    }
 
    func reset() {
        count = 0
    }
}

let counter = Counter()// count = 0
print(counter.count)

counter.increment()
print(counter.count)

counter.increment(by:5)
print(counter.count)

counter.reset()
print(counter.count)


//Mutating methods
//only nessesary for structs and enums
struct Animal {
    var name: String
 
    mutating func makeAnonymous() {
        name = "No Name"
    }
    
    func printName(){
        print(name)
    }
}

var animal = Animal(name: "Max") //name
animal.printName()

animal.makeAnonymous()
animal.printName()


