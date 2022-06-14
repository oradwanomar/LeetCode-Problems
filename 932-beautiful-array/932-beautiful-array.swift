class Solution {
    func beautifulArray(_ n: Int) -> [Int] {
        var result: [Int] = [1]
        while result.count < n {
            var tmp: [Int] = []
            for i in result {
                if (i * 2 - 1 <= n) {
                    tmp.append(i * 2 - 1)
                }
            }
            for i in result {
                if (i * 2 <= n) {
                    tmp.append(i * 2)
                }
            }
            result = tmp
        }
        return result
    }
}