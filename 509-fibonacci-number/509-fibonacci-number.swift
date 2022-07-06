class Solution {
   var cache = [Int: Int]()
    func fib(_ N: Int) -> Int {
        guard N > 1 else {
            return N
        }
        
        if let value = cache[N] {
            return value
        } else {
            let result = fib(N-1) + fib(N-2)
            cache[N] = result
            return result
        }
    }
}