class Solution {
    func sumOfThree(_ num: Int) -> [Int] {
        guard num % 3 == 0 else {return []}
        return [num/3 - 1,num/3,num/3 + 1]
    }
}