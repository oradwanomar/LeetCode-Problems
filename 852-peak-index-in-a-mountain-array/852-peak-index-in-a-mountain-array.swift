class Solution {
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        for index in 1 ..< arr.count-1{
        if(arr[index-1] < arr[index] && arr[index] > arr[index+1]){
            return index
        }
    }
    return -1
    }
}