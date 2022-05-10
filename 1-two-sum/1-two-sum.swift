class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var output : [Int] = []
        for i in 0...nums.count-2 {
            for j in i+1...nums.count-1 {
                if nums[i] + nums[j] == target {
                    output = [i,j]
                }
            }
        }
        return output
    }
}