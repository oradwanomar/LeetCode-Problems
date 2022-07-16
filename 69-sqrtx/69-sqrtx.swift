class Solution {
      func mySqrt(_ x: Int) -> Int {
        var left = 1, right = x
        while left != right {
            let middle = (left + right) / 2
            if middle * middle <= x {
                if (middle + 1) * (middle + 1) > x {
                    return middle
                }
                left = middle + 1
            } else {
                right = middle - 1
            }
        }
        return left
    }
}