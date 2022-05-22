class Solution {
    func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
        guard arr.count > 2 else {return false}
        for i in 0..<arr.count-2 {
            if arr[i] % 2 != 0 && arr[i+1] % 2 != 0 && arr[i+2] % 2 != 0 {
                return true
            }
        }
        return false
    }
}