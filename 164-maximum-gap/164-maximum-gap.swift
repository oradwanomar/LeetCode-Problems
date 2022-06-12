class Solution {
    func maximumGap(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {return 0}
        guard nums.count > 2 else {return abs(nums[1]-nums[0])}
        var maxRes = 0 
        var sortArr = nums.sorted()
        for i in 0..<sortArr.count-1 {
            let maxdif = sortArr[i+1] - sortArr[i]
            maxRes = max(maxRes,maxdif)
        }
        return maxRes
    }
}