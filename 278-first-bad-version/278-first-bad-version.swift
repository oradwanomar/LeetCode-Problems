/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
       var i = n
        while i >= 0{
            if isBadVersion(i){
                i -= 1
            }else{
                return i + 1
            }
        }
        return 0
    }
}