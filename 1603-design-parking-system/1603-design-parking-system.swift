
class ParkingSystem {
    
    var arr: [Int] = [0,0,0]
    
    init(_ big: Int, _ medium: Int, _ small: Int) {
        self.arr[0] = big
        self.arr[1] = medium
        self.arr[2] = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        if arr[carType - 1] < 1 {
            return false
        }
         arr[carType - 1] -= 1
        return true
    }
}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * let obj = ParkingSystem(big, medium, small)
 * let ret_1: Bool = obj.addCar(carType)
 */