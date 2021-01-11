//
//  ViewController.swift
//  Sorted
//
//  Created by SENTHILKUMAR on 11/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    // Input Array
    let arr : [Int] = [2,1,4,5,3,7,9,6,8]
    let findElement :Int = 6 // Find Element
    var sortedArr :[Int] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Sorted Array
        sortedArr = arr.sorted()
        
        if let index = binarySearch(givenArr: sortedArr, searchElement: findElement){
            // Success
            print("Found \(findElement) at index \(index)")
            
        }else {
            // Fail
            print("Element not found")
        }
        
    }


    func binarySearch(givenArr:[Int],searchElement:Int) -> Int?
    {
        var left  = 0
        var right = givenArr.count - 1
        
        while left <= right {
            // Middle Element from Array
            let middle = Int ((left + right)/2)
            if sortedArr[middle] < searchElement {
                left = middle + 1
            }else if sortedArr[middle] > searchElement {
                right = middle - 1
            }else {
                return middle
            }
        }
        return nil
    }

}

