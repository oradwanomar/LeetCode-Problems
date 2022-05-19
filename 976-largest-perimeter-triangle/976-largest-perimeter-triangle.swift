class Solution {
    func largestPerimeter(_ A: [Int]) -> Int {
        let a = A.sorted(by: >) 
        for i in 0..<(a.count - 2) { 
            if a[i + 1] + a[i + 2] - a[i] > 0 { 
                return a[i + 1] + a[i + 2] + a[i]
            }
        }
        return 0 
    }
}