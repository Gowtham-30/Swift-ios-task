enum Direction {
    case north, south, east, west
}

print("Enter direction (north/south/east/west):")
let input = readLine()!.lowercased()

switch input {
case "north":
    print("Moving North")
case "south":
    print("Moving South")
case "east":
    print("Moving East")
case "west":
    print("Moving West")
default:
    print("Invalid direction")
}
