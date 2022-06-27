class Solution {
    func maxScore(_ cardPoints: [Int], _ k: Int) -> Int {
        guard cardPoints.count > k else {return cardPoints.reduce(0,+)}
        let len = cardPoints.count
        var result = 0
        for i in 0..<k {
            result += cardPoints[i]
        }
        var sum = result
        for i in 1...k {
            sum -= cardPoints[k - i] 
            sum += cardPoints[len - i]
            result = max(sum,result)
        }
        return result
    }
}

// func maxScore(_ cardPoints: [Int], _ k: Int) -> Int {
//         var result = cardPoints[0..<k].reduce(0, +), current = result
        
//         for x in 1...k {
//             current -= cardPoints[k-x]
//             current += cardPoints[cardPoints.count-x]
//             result = max(result, current)
//         }
        
//         return result
//     }