
let a: [Int] = [8,-1, 3, 4]

func maxSubArrayTotal(_ a: [Int],  inIndex i: Int = 0, total t: Int = 0)  -> Int  {
    
    if a.count == 0  {
        return 0
    }
    if i > a.endIndex - 1 {
       return  maxSubArrayTotal(Array(a[1...]), inIndex: 0, total: t)
        
    }
   
    print(a[...i])
    let total = a[...i].reduce(0, +)
    let maxTotal = total>t ? total : t
    print(t)
    
    maxSubArrayTotal(a,  inIndex: i+1, total: maxTotal)
    return maxTotal

    
}

func maxSubArrayTotal2(_ a:[Int]) -> Int {
    var max_seen_so_far: Int = 0 , maxOverAll: Int = 0
    
    for num in a {
        max_seen_so_far = max(num, max_seen_so_far+num)
        maxOverAll = max(maxOverAll, max_seen_so_far)
    }
    return maxOverAll
}

func minSubArrayTotal2(_ a:[Int]) -> Int {
    var min_seen_so_far: Int = 0 , minOverAll: Int = 0
    
    for num in a {
        min_seen_so_far = min(num, min_seen_so_far+num)
        minOverAll = min(minOverAll, min_seen_so_far)
    }
    return minOverAll
}
func maxSubArrayWrapTotal3(_ a: [Int]) -> Int {
    let sumOfArray = a.reduce(0, +)
    let maxStraight = maxSubArrayTotal2(a)
    let minStraight = minSubArrayTotal2(a)
    return max(maxStraight,sumOfArray - minStraight)

}
maxSubArrayWrapTotal3(a)
