class Solution {
    func isHappy(_ n: Int) -> Bool {
        var si = Set<Int>(), i = n
        while !si.contains(i) && i != 1 {
            si.insert(i)
            i = String(i).reduce(0, {let j = Int(String($1))!; return $0 + j*j })
        }
        
        return i == 1
    }
}