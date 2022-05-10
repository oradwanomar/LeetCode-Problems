class Solution {
    func reverse(_ x: Int) -> Int {
        var result = 0
        var x = x
        while (x != 0) {
            result*=10
            result = result + x%10
            x = x / 10 
        }
        if  result > 2147483647 || result < -2147483647 {
            result = 0
        }
        
        return result
        
       
    }
}