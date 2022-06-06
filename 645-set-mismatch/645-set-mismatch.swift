class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var set = Set<Int>()
        var dup = 0
        var missing = 0
        
        //If you cannot insert num into the set, it is the duplicate
        for num in nums {
            if !set.insert(num).0 {
                dup = num
            }
        }
        
        //Check that set contains 1 to n, false is the missing number
        for i in 1...nums.count {
            if !set.contains(i) {
                missing = i
                break
            }
        }
        
        return [dup, missing]
    }
}