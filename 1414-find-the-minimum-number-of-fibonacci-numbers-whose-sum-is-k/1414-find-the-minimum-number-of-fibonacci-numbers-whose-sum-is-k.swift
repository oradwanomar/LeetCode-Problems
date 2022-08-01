class Solution {
    func findMinFibonacciNumbers(_ k: Int) -> Int {
        var fibArray: [Int] = [1,1]
        var n = 0
        
        while fibArray.last! <= k {
            let num = fibArray[n] + fibArray[n+1]
            fibArray.append(num)
            n += 1
        }
        fibArray.removeLast()
        
        var result = 0
        var tempK = k
        
        for num in fibArray.reversed() {
            if tempK >= num {
                tempK -= num
                result += 1
            }
        }
        return result
    }
}