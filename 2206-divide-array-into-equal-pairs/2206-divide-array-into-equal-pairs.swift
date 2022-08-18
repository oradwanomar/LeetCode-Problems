class Solution {
    func divideArray(_ nums: [Int]) -> Bool {
        
        let dictionary = Dictionary(nums.map { ($0, 1) } , uniquingKeysWith: +)

        for each in dictionary{
            if each.value % 2 != 0 {
                return false
            }
        }

        return true
    }
}