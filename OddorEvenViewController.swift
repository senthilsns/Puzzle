//
//  ViewController.swift
//  SampleApplication
//
//  Created by SENTHILKUMAR on 08/01/21.
//

import UIKit

class ViewController: UIViewController {

    var myArray :[Int] = [12,1,3,5,6,7]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for myInt:Int in myArray {
            
            if myInt % 2 == 0 {
                
                print("\(myInt) is Even Number")
            }else {
                print("\(myInt) is Odd Number")

            }
        }
    }


}

