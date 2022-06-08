class Solution {
    func calPoints(_ ops: [String]) -> Int {
        var result : [Int] = []
        for i in 0..<ops.count {
            if ops[i] == "C" {
                result.remove(at:result.count-1)
            }else if ops[i] == "D"{
                let adder = 2 * result[result.count-1]
                result.append(adder)
            }else if ops[i] == "+"{
                let sum = result[result.count-1] + result[result.count-2]
                result.append(sum)
            }else {
                let num = Int(ops[i])
                result.append(num!)
            }
        }
        return result.reduce(0,+)
    }
}