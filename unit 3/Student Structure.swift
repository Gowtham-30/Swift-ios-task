struct Student {
    var name: String
    var rollNumber: Int
    var marks: Int
}

print("Enter student name:")
let name = readLine()!

print("Enter roll number:")
let roll = Int(readLine()!)!

print("Enter marks:")
let marks = Int(readLine()!)!

let student = Student(
    name: name,
    rollNumber: roll,
    marks: marks
)

print("Student Details")
print("Name:", student.name)
print("Roll Number:", student.rollNumber)
print("Marks:", student.marks)
