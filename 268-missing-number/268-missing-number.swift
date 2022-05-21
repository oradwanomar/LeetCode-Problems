class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
       let sortedNum = nums.sorted()
       for (index, num) in sortedNum.enumerated() {
            if index != num {
                return index
        }
    }
    return nums.count
    }
}


