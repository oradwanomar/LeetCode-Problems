class Solution {
    func reverseString(_ s: inout [Character]) {
        var forward = 0
        var backword = s.count-1
        if s.count % 2 == 0 {
            while(forward+1 <= s.count/2){
            s.swapAt(forward,backword)
            forward += 1
            backword -= 1
        }
        }else {
            while(forward != backword){
            s.swapAt(forward,backword)
            forward += 1
            backword -= 1
        }
        }
        
    }
}