class Solution {
    func fib(_ n: Int) -> Int {
        if n == 0 {return 0}
        guard n > 2 else {return 1}
        return fib(n-1) + fib(n-2)
    }
}