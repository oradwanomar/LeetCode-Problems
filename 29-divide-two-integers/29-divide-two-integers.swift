class Solution {
    func divide(_ dd: Int, _ dr: Int) -> Int {
        let dd64 = Int64(abs(dd)), dr64 = Int64(abs(dr))
        var val: Int64 = 0, lhs: Int64 = 1, rhs = dd64
        while lhs <= rhs {
            let mid = (lhs + rhs) / 2
            if mid * dr64 <= dd64 {
                val = mid
                lhs = mid + 1
            } else {
                rhs = mid - 1
            }
        }
        return max(min(Int((dd * dr) < 0 ? -val : val), Int(Int32.max)), Int(Int32.min))
    }
}



// class Solution {
//     func divide(_ dividend: Int, _ divisor: Int) -> Int {
//         var div = abs(dividend)
//         var result = 0
//         while div >= abs(divisor) {
//             div -= abs(divisor)
//             result += 1
//         }
        
//         if (dividend < 0 && divisor < 0) || (dividend > 0 && divisor > 0) {
//             if result > Int(pow(2,31) - 1) {
//             result = Int(pow(2,31) - 1)
//             }
//             return result 
//         }else if dividend < 0 || divisor < 0 {
//               if result <= Int(Int32.min){
//             result = Int(Int32.min)
//             }
//             return result * -1
//         }else {
//             return 0
//         }
//     }
// }