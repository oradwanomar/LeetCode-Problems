class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {return nums[0]}
        var arr = nums.sorted()
        var i = 0
        var j = 1
        var optimal = 0
        while (i < nums.count - 1 && j < nums.count){
            optimal += min(arr[i],arr[j])
            i += 2
            j += 2
        }
        return optimal
    }
}