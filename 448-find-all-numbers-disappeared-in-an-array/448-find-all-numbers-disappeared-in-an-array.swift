class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var result : [Int] = []
        var dic = [Int:Int]()
        for i in nums {
            if dic[i] == nil {
                dic[i] = i
            }
        }
        for i in 1...nums.count {
            if dic[i] == nil {
                result.append(i)
            }
        }
        return result
    }
}