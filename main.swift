/* This is a program that
   generates two vehicles.

   Sean McLeod
   2021/05/28
*/

enum IntParsingError: Error {
    case overflow
    case invalidInput
}

// call object
let truck = Truck()
let bike = Bike()

// current state
print("\nTruck before: ")
truck.printVehicleInfo()
print("Amount of air: \(truck.provideAir(amountOfAir: 0))")
print("Plate number: \(truck.getPlateNumber())")

// input
print()
print("What is the color of the truck: ", terminator: "")

do {
    let truckColour = readLine()
    print("Accelerate by: ", terminator: "")
    guard let truckAccelerate = Int(readLine()!) else {
        throw IntParsingError.invalidInput
    }
    print("Brake by: ", terminator: "")
    guard let truckBrake = Int(readLine()!) else {
        throw IntParsingError.invalidInput
    }
    print("How much air is provided: ", terminator: "")
    guard let amountOfAir = Int(readLine()!) else {
        throw IntParsingError.invalidInput
    }
    print("What is the plate number: ", terminator: "")
    let plateNumber = readLine()

    // pass the states in
    truck.setColour(colourString: truckColour!)
    truck.acceleration(increment: truckAccelerate)
    truck.brake(decrement: truckBrake)
    truck.setPlateNumber(userPlate: plateNumber!)

    // print the changed state
    print("\nTruck after:")
    truck.printVehicleInfo()
    print("Amount of air: \(truck.provideAir(amountOfAir: amountOfAir))")
    print("Plate number: \(truck.getPlateNumber())\n")

    print("--------------------------")

    // current state
    print("\nBike before: ")
    bike.printVehicleInfo()
    print("Cadence: \(bike.getCadence())")

    // input
    print()
    print("What is the color of the bike: ", terminator: "")
    let bikeColour = readLine()
    print("Accelerate by: ", terminator: "")
    guard let bikeAccelerate = Int(readLine()!) else {
        throw IntParsingError.invalidInput
    }
    print("Brake by: ", terminator: "")
    guard let bikeBrake = Int(readLine()!) else {
        throw IntParsingError.invalidInput
    }
    print("Ring the bell!")

    // pass the states in
    bike.setColour(colourString: bikeColour!)
    bike.acceleration(increment: bikeAccelerate)
    bike.brake(decrement: bikeBrake)

    // current state
    print("\nBike after: ")
    bike.printVehicleInfo()
    print("Cadence: \(bike.getCadence())")
    print(bike.ringBell())

    // get the number of tires of the truck and the bike
    print("\n# of tires of a truck: \(truck.nOfTires())")
    print("# of tires of a bike: \(bike.nOfTires())")

} catch {
    print("\nPlease enter an integer.")
}
