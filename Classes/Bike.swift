/* This is a class that has
   the Bike's properties and states.

   Sean McLeod
   2021/05/28
*/

public class Bike: Vehicle {
    private var cadence:Double
    private let nOfTire:Int

    public override init() {
        self.cadence = 0
        self.nOfTire = 2
        super.init()
    }

    public func getCadence() -> Double {
        self.cadence = Double(super.getSpeed()) / (0.079 * (53 / 12))
        return self.cadence
    }

    public func ringBell() -> String {
        return "Ring, Ring!"
    }

    public func nOfTires() -> Int {
        return nOfTire
    }
}
