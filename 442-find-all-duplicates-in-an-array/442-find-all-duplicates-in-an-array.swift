class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var dictionary : [Int:Bool] = [:]
        var results : [Int] = []
        guard nums.count > 1 else { return results}
        for num in nums {
            if dictionary[num] == nil {
                dictionary[num] = true
            }else {
                dictionary[num] = nil
                results.append(num)
            }
        }
        return results
    }
}