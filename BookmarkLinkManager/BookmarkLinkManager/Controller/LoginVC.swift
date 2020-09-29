//
//  LoginVC.swift
//  BookmarkLinkManager
//
//  Created by Thien Tran on 9/28/20.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailTextInput: UITextField!
    @IBOutlet weak var passwordTextInput: UITextField!
    
    var appApi = AppApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appApi.delegate = self
    }

    @IBAction func logInPressed(_ sender: Any) {
        if let email = emailTextInput.text ,let password = passwordTextInput.text {
            do {
                //Call api
                try appApi.login("abc@gmail.com", "password")
            } catch ApiErrorError.emptyParams(let msg){
                print(msg)
            } catch {
            }
        }
        
    }
}

extension LoginVC : AppApiDelegate {
    func fetchSuccessData(_ data: Any) {
        if let convertedData = data as? UserModel {
          print(convertedData.token) 
        }
    }
    
    func fetchFail(_ error: Error) {
        print(error)
    }
    
    
}
