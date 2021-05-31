/* This is a class that has
   the Vehicle's properties and states.

   Sean McLeod
   2021/05/28
*/

public class Vehicle {
    private var colour:String
    private var speed:Int
    private let maxSpeed:Int

    public init() {
        self.colour = "White"
        self.speed = 0
        self.maxSpeed = 100
    }

    public func getColour() -> String {
        return self.colour
    }

    public func getSpeed() -> Int {
        return self.speed
    }

    public func getMaxSpeed() -> Int {
        return self.maxSpeed
    }

    public func setColour(colourString: String) {
        self.colour = colourString
    }

    public func acceleration(increment: Int) {
        if (increment < 0) {
            print("Please enter in a positive number")
        } else if (self.speed + increment > self.maxSpeed) {
            print("Your input is greater than the maximum speed.")
            print("Speed has automatically set to maximum speed.")
            self.speed = self.maxSpeed
        } else {
            self.speed += increment
        }
    }

    public func brake(decrement: Int) {
        if (decrement < 0) {
            print("Please enter in a positive number")
        } else if (self.speed - decrement < 0) {
            print("Your speed is less than the minimum speed.")
            print("Speed has automatically set to 0.")
            self.speed = 0
        } else {
            self.speed -= decrement
        }
    }

    public func printVehicleInfo() {
		print("Colour: \(self.colour)");
		print("Speed: \(self.speed)");
		print("Maximum speed: \(self.maxSpeed)");
    }
}
