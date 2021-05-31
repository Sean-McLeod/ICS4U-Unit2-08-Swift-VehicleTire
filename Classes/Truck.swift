/* This is a class that has
   the Truck's properties and states.

   Sean McLeod
   2021/05/28
*/

public class Truck: Vehicle {
    private var plateNumber:String
    private let nOfTire:Int

    public override init() {
        self.plateNumber = "null"
        self.nOfTire = 4
        super.init()
    }

    public func getPlateNumber() -> String {
        return self.plateNumber
    }

    public func setPlateNumber(userPlate: String) {
        self.plateNumber = userPlate
    }

    public func provideAir(amountOfAir: Int) -> Int {
        return amountOfAir
    }

    public func nOfTires() -> Int {
        return nOfTire
    }
}
