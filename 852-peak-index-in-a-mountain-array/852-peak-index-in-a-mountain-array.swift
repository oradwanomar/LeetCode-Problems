class Solution {
    func peakIndexInMountainArray(_ A: [Int]) -> Int {
       var low = 0
var high = A.count - 1

while low < high {
    var mid = (low+high)/2

    if A[mid] < A[mid+1]
    {
        low = mid + 1
    }
    else
    {
        high = mid
    }
}

return low
    }
}