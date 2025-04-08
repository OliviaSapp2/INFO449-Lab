import UIKit


let age = 20

//If Else
if  {
    print("Old ebough to drink")
}
else if  {
    print("Old enough to vote")
}
else{
    print("A child!")
}


// Gaurd
func greet(person: [String: String]) {
  
}
 
greet(person: ["name": "Olivia"])
greet(person: ["name": "Olivia", "age": "20"])


// Switch Simple
switch age {
    case :
    print("Not old enough to vote or drink")
  case :
    print("old enough to vote, but not to drink")
  default:
    print("Old enough to vote and drink")
}

// Writing all these numbers is tedious, lets make it easier
//Switch range
switch age {
case :
    print("Not old enough to vote or drink")
  case :
    print("old enough to vote, but not to drink")
  default:
    print("Old enough to vote and drink")
}


//Switch Where
switch age {
case :
    print("You are 18 years old")
case :
    print("You are older than 21")
case let :
    print("You are \(x) years old")
}

// Lets wish you a happy birthday, for every year you are alive

//While loops
let age2 = 5

var index : Int = 1
while  {
  print("Happy \(index) Birthday")
    
}

//For loops
for {
  print("Happy Birthday you are \() years old")
}
for {
  print("Happy birthday to you")
}


//Arrays
// Wish a happy birthday to everyone who's birthday is today
let bornToday = ["Alice", "Bob", "Charlie", "Malik", "Terra"]

//wisha happy birthday only to Alice
print("Happy Birthday \()!")

//now wisha happy birthday to everyone
print("Happy Birthday to: \()!")

// use a For loop to wish everyone a happy birthday
for  {
    print("happy birthday \()")
}

// Dictionaries are key-value pairs like hash maps in Java
var ages = [
    "Marge": "12",
    "Jannet": "25",
]
//add to the dictionary
ages["Kyla"] = "20"

print("Marge is \() years old")
print("These are my friends \()")
    
// Use for-in over dictionaries
for (key, value) in ages {
  print("\() is \() years old")
}

//Enums
enum seasons {
    case Winter
    case Spring
    ...
}
enum months {
    case December, January, Febuary, March
}
    
var tempurature =  //change season.Spring, season.winter, summer, or fall
switch tempurature {
    case .Winter: print("Winter quarter at UW is dark")
    case .Spring: print("Spring at UW has Cherry Blossom trees")
    case .Summer : print("Many students go home for the summer")
    case .Fall : print("Fall at UW is when students come back to school")
}

//Tuples
var kyle = ()
print("This is: \()")
print("Hello my name is \() and I am \() years old")

kyle = ()
print("This is: \()")
print("Hello my name is \() and I am \() years old")

var Jess = ()
print("Hello my name is \() and I am \() years old, and I am a \())")

//Functions
//wish a happy birthday to some people

func happyBirthday(personName : String, personAge: Int) -> String {
    return "Happy Birthday, \(), you are \() years old!"
}
print(happyBirthday())

func yearOlder(currentAge: Int) -> Int {
    return currentAge + 1
}

print("\(yearOlder())")
print(yearOlder())

//So many ways to make a happy birthday function

//Anonymous functions
let happyBirthday2 = { () -> String in return "Happy birthday \(name), you are \(age) years old!" }
print("\(happyBirthday2("Ned",50))")

//Inferred parameter types
let happyBirthday3 : () -> String = { () in return "Happy birthday \(name), you are \(age) years old!"}
print("\(happyBirthday3("Ned",51))")

//Inferred return value
let happyBirthday4 : () -> String = { () in "Happy birthday \(name), you are \(age) years old!" }
print("\(happyBirthday4("Ned",52))")

//Inferred parameter names
let happyBirthday5 : () -> String = { "Happy birthday \($0), you are \($1) years old!" }
print("\(happyBirthday5("Ned",53))")


//Classes
class Pet {
    var name = ""
    var age = 0
    var animal = ""
    
    var about : String {
        get{
            return "\() is my \() that is \() years old"
        }
    }
}

//lets initalize a dog, name it what you want



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

print("My \()'s name is \() and they are \() years old.")
print("\()' sibling is \()")

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

var animal = Animal() //name
animal.printName()


