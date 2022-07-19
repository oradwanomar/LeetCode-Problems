class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var result :[Int] = []
        guard nums.count > 0 else {return [-1,-1]}
        var left = 0 
        var right = nums.count - 1
        var position = -1
        
        while left <= right {
            var mid = (left + right) / 2 
            if nums[mid] == target {
                position = mid
                break
            }
            if nums[mid] > target{
                right = mid - 1
            }else{
                left = mid + 1
            }
        }
        
        if position == -1 {
            return [-1,-1]
        }
        
        var back = position
        while back - 1 > -1 , nums[back-1] == target {
                back -= 1
        }
        result.append(back)
        
        var forward = position 
        while forward + 1 < nums.count , nums[forward+1] == target{
               forward += 1 
        }
        result.append(forward)
        
        return result
    }
}