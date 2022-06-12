class Solution {
    func countPrimes(_ n: Int) -> Int {
        var count = 0
        var primes = Array(repeating: true, count: n)
        var i=2
        while i<n {
            if primes[i] == true {
                count += 1
                var j=i*2
                while(j<n) {
                    primes[j] = false
                    j+=i
                }
            }
            i += 1
        }
        return count
    }
}