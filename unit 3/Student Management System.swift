enum Grade: String {
    case A, B, C, D, F

    static func calculate(_ marks: Int) -> Grade {
        switch marks {
        case 90...100: return .A
        case 80..<90: return .B
        case 70..<80: return .C
        case 60..<70: return .D
        default: return .F
        }
    }
}

struct Student {
    var name: String
    var rollNumber: Int
    var marks: Int

    var grade: Grade {
        return Grade.calculate(marks)
    }
}

class School {
    var students: [Student] = []

    func addStudent(_ student: Student) {
        students.append(student)
    }

    func printReport() {
        let sortedStudents = students.sorted {
            $0.marks > $1.marks
        }

        print("\nStudent Report")

        for student in sortedStudents {
            print("""
            Name: \(student.name)
            Roll Number: \(student.rollNumber)
            Marks: \(student.marks)
            Grade: \(student.grade.rawValue)
            --------------
            """)
        }
    }
}

let school = School()

print("Enter number of students:")
let n = Int(readLine()!)!

if n > 0 {
    for _ in 1...n {
        print("Enter student name:")
        let name = readLine()!

        print("Enter roll number:")
        let roll = Int(readLine()!)!

        print("Enter marks:")
        let marks = Int(readLine()!)!

        if (0...100).contains(marks) {
            let student = Student(
                name: name,
                rollNumber: roll,
                marks: marks
            )

            school.addStudent(student)
        } else {
            print("Invalid marks. Student skipped.")
        }
    }
}

school.printReport()
