class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        var temp : [Int] = []
        for i in 0..<arr.count {
            if temp.count < arr.count {
                temp.append(arr[i])
                if temp.count < arr.count {
                    if arr[i] == 0 {
                    temp.append(0)
                }
                }
            }
        }
        arr = temp
    }
}