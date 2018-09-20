
//variables

var message : String = "hi"
let classMax : Int = 20

var age : Int
age=20

var name = "Aileen"
var firstName="Aileen"
name="Pierce"

print("Who am I?")
print(firstName)
print("Hi " + firstName)
print("My name is \(firstName)")
print("\(firstName)"+"\(age)")
print("\(firstName)" + " \(name)")

let a = 42
let b = 0.123
let c = Double(a) + b

//tuples
let violet = ("#EE82EE", 238, 130, 238)
print("Violet is \(violet.0)")
let (hex, red, green, blue) = violet
print("Violet is \(hex)")

//conditionals
var young = "you're young"
var notyoung = "you're not young"

if age < 21 {
    print(young)
}
else {
    print(notyoung)
}

age < 21 ? young : notyoung

age = 21

switch age{
case 0...5: print("You're a wee bitty one")
case 6..<21: print("Enjoy school")
case 21...55: print("Welcome the real world")
default: print("I don't know what you're doing")
}

//loops
for i in 0...age {
    print("\(i)")
}


//functions

func sayHi(){
    print("Hi")
}

sayHi()

func sayHello (first: String, last: String){
    print("Hi \(first) \(last)")
}

sayHello(first: "Bill", last: "Adams")

func sayWhat(firstName first:String, lastName last: String){
    print("what \(first) \(last)?")
}