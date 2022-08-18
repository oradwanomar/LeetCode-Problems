/**
 * // This is MountainArray's API interface.
 * // You should not implement it, or speculate about its implementation
 * interface MountainArray {
 *     public func get(_ index: Int) -> Int {}
 *     public func length() -> Int {}
 * }
 */

class Solution {
    func findInMountainArray(_ target: Int, _ mountainArr: MountainArray) -> Int {
        let length = mountainArr.length()
        
        // find peak
        var left = 0
        var right = length - 1
        var peak = 0
        
        while left < right {
            let mid = left + (right - left) / 2
            if mountainArr.get(mid) < mountainArr.get(mid + 1) {
                left = mid + 1
            } else {
                right = mid
            }
        }
        
        peak = left
        
        // binary search on left
        left = 0
        right = peak
        
        while left <= right {
            let mid = left + (right - left) / 2
            let midVal = mountainArr.get(mid)
            
            if midVal == target { return mid }
            if midVal < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        // binary search on right
        left = peak
        right = length - 1
        
        while left <= right {
            let mid = left + (right - left) / 2
            let midVal = mountainArr.get(mid)
            
            if midVal == target { return mid }
            if midVal > target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        return -1
        
        
    }
}