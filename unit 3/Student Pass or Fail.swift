struct Student {
    var name: String
    var marks: Int

    func isPassed() -> Bool {
        return marks >= 40
    }
}

print("Enter student name:")
let name = readLine()!

print("Enter marks:")
let marks = Int(readLine()!)!

let student = Student(name: name, marks: marks)

if student.isPassed() {
    print("\(student.name) has passed")
} else {
    print("\(student.name) has failed")
}
