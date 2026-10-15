class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func introduce() {
        print("My name is \(name). I am \(age) years old.")
    }
}

print("Enter your name:")
let name = readLine()!

print("Enter your age:")
let age = Int(readLine()!)!

let person = Person(name: name, age: age)
person.introduce()
