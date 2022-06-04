class Solution {
    func maxArea(_ height: [Int]) -> Int {
        guard height.count > 1 else {return -1}
        guard height.count > 2 else {return min(height[0],height[1])}
        
        var maxArea = 0
        var left = 0
        var right = height.count - 1
        
        while left < right {
            let minHeight = min(height[left],height[right])
            let currentArea = minHeight * (right - left)
            maxArea = max(maxArea,currentArea)
            
            if height[left] < height[right] {
                left += 1
            }else {
                right -= 1
            }
        }
        return maxArea
    }
}