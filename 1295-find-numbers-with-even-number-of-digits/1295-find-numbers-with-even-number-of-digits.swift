class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var counter = 0
        var s = ""
        for n in nums {
            if String(n).count % 2 == 0 {
                counter += 1
            }
        }
        return counter
    }
}