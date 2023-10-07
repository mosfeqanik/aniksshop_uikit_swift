//
//  LoginController.swift
//  aniks-shop
//
//  Created by Md Mosfeq Anik on 4/10/23.
//

import UIKit

class LoginController: UIViewController {
    
    @IBOutlet weak var loginBtn:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onClickLoginBtn(){
        let alertController = UIAlertController(title: "Click Event", message: "clicked", preferredStyle: .alert)
        let closeAction = UIAlertAction(title: "Close", style: .cancel)
        alertController.addAction(closeAction)
        self.present(alertController,animated: true)
    }

    

}
