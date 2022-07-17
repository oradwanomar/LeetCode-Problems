class Solution {
    func judgeSquareSum(_ c: Int) -> Bool {
        for i in 0...c{
            let fSquare = i*i
            let sSquare = Double(c - fSquare)
            
            if sSquare < 0 {
                break
            }
            
            if Int(sqrt(sSquare)) * Int(sqrt(sSquare)) == Int(sSquare) {
                return true
            }
        }
        return false
    }
}