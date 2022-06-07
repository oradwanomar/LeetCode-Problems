class Solution {
    func sortArrayByParityII(_ nums: [Int]) -> [Int] {
        var oddarr : [Int] = []
        var evenarr : [Int] = []
        var result : [Int] = []
        for num in nums {
            if num % 2 == 0 {
                evenarr.append(num)
            }else {
                oddarr.append(num)
            }
        }
        for i in 0..<nums.count/2 {
            result.append(evenarr[i])
            result.append(oddarr[i])
        }
        return result
    }
}