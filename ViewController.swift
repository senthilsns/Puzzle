//
//  ViewController.swift
//  puzzle
//
//  Created by Senthil Kumar2 on 14/12/20.
//  Copyright © 2020 Personal. All rights reserved.
//

/*
Input : "Hello" Repeat Count : 5

output : Hello Hello Hello Hello Hello

*/


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let str : String = multiflyWords(inputStr: "Hello", repeat: 5)
        print(str)
        
    }

    
    func multiflyWords(inputStr:String,repeat:Int) -> String {
        
        var tempArr : [String] = []
        var finalStr :String = ""
        
        for  _ in 1...`repeat`{
            
            tempArr.append(inputStr)
        }
        
        finalStr = tempArr.joined(separator: " ")
        
        return finalStr
    }

}

