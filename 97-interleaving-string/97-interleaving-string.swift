class Solution {

var dic = [String: Bool]()

func isInterleave(_ s1: String, _ s2: String, _ s3: String) -> Bool {
    
    if(s1.count+s2.count != s3.count) {
        return false
    }
    
    var a1 = Array(s1)
    var a2 = Array(s2)
    var a3 = Array(s3)
    
    return check(a1: a1, a2: a2, a3: a3, i: 0, j: 0, k: 0)
}

func check(a1: [Character], a2: [Character], a3: [Character], i: Int, j: Int, k: Int) -> Bool {
    
    if let v = dic["\(i)-\(j)-\(k)"] {
        return v
    }
    
    if(i >= a1.count && j >= a2.count && k >= a3.count) {
        return true
    }
    
    var v1 = false
    if(i < a1.count && a1[i] == a3[k]) {
        v1 = check(a1: a1, a2: a2, a3: a3, i: i+1, j: j, k: k+1)
    }
    
    var v2 = false
    if(j < a2.count && a2[j] == a3[k]) {
        v2 = v1 || check(a1: a1, a2: a2, a3: a3, i: i, j: j+1, k: k+1)
    }
    
    dic["\(i)-\(j)-\(k)"]  = v1 || v2
    
    return v1 || v2
}
}