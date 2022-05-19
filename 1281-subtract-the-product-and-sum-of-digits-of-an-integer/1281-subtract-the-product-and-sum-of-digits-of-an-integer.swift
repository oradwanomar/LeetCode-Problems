class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        var product = 1
        var sum = 0
        var n = n
        var remain = 0
        while (n != 0) {
            remain = n % 10
            n = n/10
            product *= remain
            sum += remain
        }
        return product - sum
    }
}