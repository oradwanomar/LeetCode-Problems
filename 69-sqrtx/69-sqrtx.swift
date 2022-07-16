class Solution {
    func mySqrt(_ x: Int) -> Int {
        for i in 0...x{
            if i * i == x {
                return i
            }else if i * i > x {
                return i - 1
            }
        }
        return 0
    }
}