class Solution {
    func findLucky(_ arr: [Int]) -> Int {
        var dic = [Int:Int]()
        var max = -1
        for num in arr{
            if dic[num] == nil{
                dic[num] = 1
            }else{
                dic[num]! += 1
            }
        }
        
        for (key,value) in dic{
            if key == value {
                if key > max{
                    max = key
                }
            }
        }
        return max
    }
}