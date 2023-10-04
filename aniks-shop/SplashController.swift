//
//  ViewController.swift
//  aniks-shop
//
//  Created by Md Mosfeq Anik on 6/9/23.
//

import UIKit

class SplashController: UIViewController {

    var timer:Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.timer = Timer.scheduledTimer(timeInterval: 3.0,target: self, selector:#selector(makeTransition),userInfo: nil, repeats: false)
        
        }

    @objc func makeTransition(){
        print("Timer ended")
        self.timer?.invalidate()
        
    }
    
   

}

