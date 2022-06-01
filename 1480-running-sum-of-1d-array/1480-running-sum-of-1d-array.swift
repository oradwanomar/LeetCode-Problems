class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result : [Int] = []
        var sum = 0
        for num in nums {
            sum += num 
            result.append(sum)
        }
        return result
    }
}