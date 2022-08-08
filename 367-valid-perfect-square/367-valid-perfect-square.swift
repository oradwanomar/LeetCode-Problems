class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        guard num >= 2 else {return true}
        var left = 2
        var right = num / 2
        var mid  = 0
        
        while left <= right {
            mid = (left+right) / 2
            let sqr = mid * mid
            if sqr == num {
                return true
            }
            if sqr >= num {
                right = mid - 1
            }else {
                left = mid + 1
            }
        }
        return false
    }
}