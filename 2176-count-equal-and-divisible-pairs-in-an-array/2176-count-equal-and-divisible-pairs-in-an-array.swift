class Solution {
    func countPairs(_ nums: [Int], _ k: Int) -> Int {
        var result = 0
        
        for i in 0 ..< nums.count {
            for j in i + 1 ..< nums.count {
                if nums[i] == nums[j] && (i * j) % k == 0 {
                    result += 1
                } 
            }
        }
        
        return result
    }
}