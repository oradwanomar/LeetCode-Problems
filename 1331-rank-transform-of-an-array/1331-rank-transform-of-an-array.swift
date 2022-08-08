class Solution {
    func arrayRankTransform(_ arr: [Int]) -> [Int] {
        var dic = [Int:Int]()
        let sortedArray = arr.sorted()
        var result: [Int] = []
        var i = 1
        
        for num in sortedArray {
            if dic[num] == nil {
                dic[num] = i 
                i += 1
            } 
        }
        return arr.map { dic[$0]! }
    }
}
