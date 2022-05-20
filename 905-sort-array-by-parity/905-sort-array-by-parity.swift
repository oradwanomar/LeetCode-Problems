class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        guard nums.count > 0 else {return nums}
        var result : [Int] = []
        for num in nums {
            if num % 2 == 0 {
                result.append(num)
            }
        }
        for num in nums {
            if num % 2 != 0 {
                result.append(num)
            }
        }
        return result
    }
}