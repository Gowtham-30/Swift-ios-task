enum PaymentMethod {
    case cash
    case card(number: String)
    case upi(id: String)
}

func showPayment(_ method: PaymentMethod) {
    switch method {
    case .cash:
        print("Payment using cash")
    case .card(let number):
        print("Card number:", number)
    case .upi(let id):
        print("UPI ID:", id)
    }
}

print("Choose payment: 1. Cash  2. Card  3. UPI")
let choice = Int(readLine()!)!

switch choice {
case 1:
    showPayment(.cash)
case 2:
    print("Enter card number:")
    let number = readLine()!
    showPayment(.card(number: number))
case 3:
    print("Enter UPI ID:")
    let id = readLine()!
    showPayment(.upi(id: id))
default:
    print("Invalid choice")
}
