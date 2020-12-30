//
//  ViewController.swift
//  test
//
//  Created by SENTHILKUMAR on 29/12/20.
//

/*
 Given two sorted arrays of integers, find the median
 Example: _nums1: [1,3,5]
 Example: _nums2: [2,4,6]
 Median -> 3.5
 Explanation: After merging, and then SORTING two arrays we get: [1,2,3,4,5,6]
 Middle two elements are [3,4]. Take average of those: (3+4) / 2 = 3.5
 This is for an array that is even. Now for an odd array:
 Example: _nums1: [-1,3,5]
 Example: _nums2: [0,2]
 Median -> 2
 Explanation: After merging two arrays we get [-1,0,2,3,5]
 Middle of this is 2.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       print( findMedianSortedArrays(_nums1: [8,5,6], _nums2: [1,7,4]) )
        
       print( Int(findMedianSortedArrays(_nums1: [2,5], _nums2: [1,6,4]) ))

    }


    func findMedianSortedArrays(_nums1: [Int], _nums2: [Int]) -> Double {
        
        let mergeArr :[Int] = (_nums1+_nums2).sorted()
        print(mergeArr)
        
        if (mergeArr.count % 2 == 0 ) {
            
            // Even
            let firstIndex = mergeArr.count/2 - 1
            let secondIndex = mergeArr.count/2
            let additionArr = Double(mergeArr[firstIndex] + mergeArr[secondIndex]) / 2
            return Double(additionArr)
            
        } else {
            
            // Odd
            let middleIndex = Int( mergeArr.count/2 )
            let middleElement = mergeArr[middleIndex]
            return Double(middleElement)

            
        }
        
        
    }
    
}

