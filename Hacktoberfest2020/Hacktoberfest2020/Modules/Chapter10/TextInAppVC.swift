//
//  TextInAppVC.swift
//  Hacktoberfest2020
//
//  Created by Thien Tran on 10/17/20.
//

import UIKit

class TextInAppVC: UIViewController {
    
    let contentLabel : Label = {
        let label = Label()
        label.backgroundColor = .lightGray
        return label;
    }()
    
    let inputText : TextField = {
        let input = TextField()
        return input
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputText.delegate = self
        
        configureView()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardShow), name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardHide), name: UIResponder.keyboardDidHideNotification, object: nil)
        
    }
    
    func configureView() {
        // For Label and TextView
        //        view.addSubview(contentLabel)
        //        contentLabel.translatesAutoresizingMaskIntoConstraints = false
        //        NSLayoutConstraint.activate([contentLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        //                                     contentLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        //                                     contentLabel.heightAnchor.constraint(equalToConstant: 200),
        //                                     contentLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width)
        //        ])
        
        // For TextField
        view.addSubview(inputText)
        inputText.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([inputText.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                                     inputText.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
                                     inputText.heightAnchor.constraint(equalToConstant: 40),
                                     inputText.widthAnchor.constraint(equalToConstant: self.view.frame.width - 40)
        ])
    }
    
    
    
    
    @objc func keyboardShow(_ n: Notification){
        print("Keyboard shows")
    }
    
    
    @objc func keyboardHide(_ n: Notification){
        print("Keyboard hides")
    }
}

extension TextInAppVC : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
