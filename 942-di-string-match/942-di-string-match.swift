class Solution {
    func diStringMatch(_ s: String) -> [Int] {
        var result : [Int] = [Int](repeating:0, count: s.count + 1)
        var min = 0
        var max = s.count
        var arr = Array(s)
        for i in 0..<arr.count {
            if arr[i] == "I" {
                result[i] = min
                min += 1
            }else {
                result[i] = max
                max -= 1
            }
        }
        result[s.count] = min
        return result
    }
}