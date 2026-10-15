struct Student {
    var name: String
    var marks: Int

    init?(name: String, marks: Int) {
        guard (0...100).contains(marks) else {
            return nil
        }

        self.name = name
        self.marks = marks
    }
}

print("Enter student name:")
let name = readLine()!

print("Enter marks (0-100):")
let marks = Int(readLine()!)!

if let student = Student(name: name, marks: marks) {
    print("Name:", student.name)
    print("Marks:", student.marks)
} else {
    print("Invalid marks. Student cannot be created.")
}
