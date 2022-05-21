class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        for i in 0..<numbers.count{
            for j in i+1..<numbers.count{
                if numbers[i] + numbers[j] == target{
                    return [i+1,j+1]
                }
            }
        }
        return [0,0]
    }
}