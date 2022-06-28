class Solution {
    func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
        var result : [Int] = []
        var counter = 0
        for num in nums {
            if num < pivot {
                result.append(num)
            } else if num == pivot {
                counter += 1
            }
        }
        
        for i in 0..<counter {
            result.append(pivot)
        }
        
        for num in nums {
            if num > pivot {
                result.append(num)
            }
        }
        return result
    }
}