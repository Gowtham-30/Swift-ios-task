enum Planet: CaseIterable {
    case mercury, venus, earth, mars
    case jupiter, saturn, uranus, neptune

    var order: Int {
        switch self {
        case .mercury: return 1
        case .venus: return 2
        case .earth: return 3
        case .mars: return 4
        case .jupiter: return 5
        case .saturn: return 6
        case .uranus: return 7
        case .neptune: return 8
        }
    }
}

print("Enter planet name:")
let name = readLine()!.lowercased()

if let planet = Planet.allCases.first(
    where: { String(describing: $0) == name }
) {
    print("Planet:", planet)
    print("Order from Sun:", planet.order)
} else {
    print("Invalid planet")
}

print("All planets:")
for planet in Planet.allCases {
    print(planet)
}
