class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        guard intervals.count > 1 else {return intervals}
        var result = [[Int]]()
        let sortedInput = intervals.sorted(by:{ item1,item2 in 
            return item1[0] < item2[0]
        })
        result.reserveCapacity(intervals.count)
        result.append(sortedInput[0])
        
        for i in 1..<sortedInput.count {
            let current = sortedInput[i]
            let lastInterval = result.last!
            
            if current[0] >= lastInterval[0] && current[0] <= lastInterval[1] {
                _ = result.removeLast()
                result.append([
                    lastInterval[0],
                    max(current[1],lastInterval[1])
                ])
            }else {
                result.append(current)
            }
        }
        return result
    }
}