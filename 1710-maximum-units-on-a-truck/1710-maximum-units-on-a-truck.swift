class Solution {
    func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
		let boxTypes = boxTypes.sorted { $0[1] >= $1[1] }
        var truckSize = truckSize
        var units = 0
        
        for boxType in boxTypes {
            if boxType[0] < truckSize {
                units += boxType[0] * boxType[1]
                truckSize -= boxType[0]
            }else {
                units += truckSize * boxType[1]
                break
            }
        }
        return units
    }
}