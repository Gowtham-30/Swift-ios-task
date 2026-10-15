class Book {
    var title: String

    init(title: String) {
        self.title = title
    }
}

class Library {
    var books: [Book] = []

    func addBook(_ title: String) {
        books.append(Book(title: title))
        print("Book added")
    }

    func removeBook(_ title: String) {
        let oldCount = books.count
        books.removeAll { $0.title == title }

        if books.count < oldCount {
            print("Book removed")
        } else {
            print("Book not found")
        }
    }

    func searchBook(_ title: String) {
        if books.contains(where: { $0.title == title }) {
            print("Book found:", title)
        } else {
            print("Book not found")
        }
    }

    func listBooks() {
        print("Books in library:")

        for book in books {
            print(book.title)
        }
    }
}

let library = Library()

while true {
    print("""
    1. Add book
    2. Remove book
    3. Search book
    4. List books
    5. Exit
    """)

    print("Enter your choice:")
    let choice = Int(readLine()!)!

    switch choice {
    case 1:
        print("Enter book title:")
        library.addBook(readLine()!)
    case 2:
        print("Enter book title to remove:")
        library.removeBook(readLine()!)
    case 3:
        print("Enter book title to search:")
        library.searchBook(readLine()!)
    case 4:
        library.listBooks()
    case 5:
        exit(0)
    default:
        print("Invalid choice")
    }
}
