
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
    var max_ending_here: Int = 0 , max_so_far: Int = 0
    
    for num in a {
        max_ending_here = max(num, max_ending_here+num)
        max_so_far = max(max_so_far, max_ending_here)
    }
    return max_so_far
}

func minSubArrayTotal2(_ a:[Int]) -> Int {
    var min_ending_here: Int = 0 , min_so_far: Int = 0
    
    for num in a {
        min_ending_here = min(num, min_ending_here+num)
        min_so_far = min(min_so_far, min_ending_here)
    }
    return min_so_far
}
func maxSubArrayWrapTotal3(_ a: [Int]) -> Int {
    let sumOfArray = a.reduce(0, +)
    let maxStraight = maxSubArrayTotal2(a)
    let minStraight = minSubArrayTotal2(a)
    return max(maxStraight,sumOfArray - minStraight)

}
maxSubArrayWrapTotal3(a)




