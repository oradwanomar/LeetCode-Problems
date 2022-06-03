class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var result : [Int] = []
        var dic = [Int:Int]()
        var sortarr = nums.sorted()
        for i in sortarr {
            if dic[i] == nil {
                dic[i] = i
            }
        }
        for i in 1...sortarr.count {
            if dic[i] == nil {
                result.append(i)
            }
        }
        return result
    }
}