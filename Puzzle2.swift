//
//  ViewController.swift
//  samplle
//
//  Created by SENTHILKUMAR on 21/12/20.
//

/*

Input : "a3b4b5g8"

output: 20

*/

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      print(getSum(str: "a3b4b5g8"))
       
    }
    
    
    func getSum(str: String) -> Int {

        let characterArr :[Character] = Array(str)
        var stringArr:[String] = []
          
        
        for i in characterArr {
            stringArr.append(String(i))

        }
        
        print(stringArr)
        var sum : Int = 0

        let filterArr : [Int] = stringArr.compactMap { Int($0) }

        for arr in filterArr {
    sum += arr

    }

    return sum

    }

}

