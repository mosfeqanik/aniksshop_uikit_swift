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
        
        if let currentWindowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene{
            
            //SceneDelegate
            if let sceneDelegate = currentWindowScene.delegate as? SceneDelegate,let window = sceneDelegate.window{
//                print(window.rootViewController)
                if let loginViewController = self.storyboard?.instantiateViewController(withIdentifier: Constants.loginController) as? LoginController{
                    window.rootViewController = loginViewController
                }
            }
        }
        
    }
    
   

}

