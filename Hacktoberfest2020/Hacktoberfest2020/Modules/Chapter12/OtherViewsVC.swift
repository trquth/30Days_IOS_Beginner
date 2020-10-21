//
//  OtherViewsVC.swift
//  Hacktoberfest2020
//
//  Created by Thien Tran on 10/19/20.
//

import UIKit

class OtherViewsVC: UIViewController {
    
    
    let otherView : ActivityIndicator  = {
        let view = ActivityIndicator(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        return view
    }()
    
    let startButton : UIButton = {
        let button = Button()
        let titleAttributes = NSMutableAttributedString(string: "Start", attributes: [.font : UIFont.systemFont(ofSize: 18 ), .foregroundColor : UIColor.white])
        button.setAttributedTitle(titleAttributes, for: .normal)
        
        let startIcon = UIImage(named: "start")
//        let size = startIcon?.size
//        let resizedStartIcon = startIcon?.resizableImage(withCapInsets: UIEdgeInsets(top: size?.height / 2, left: size?.width / 2, bottom: size?.height / 2, right: size?.width / 2), resizingMode: .stretch)
        button.setImage(startIcon, for: .normal)
        button.backgroundColor = .green
        
        
        button.layer.borderWidth = 0
        
        return button
    }()
    
    let stopButton : UIButton = {
        let button = Button()
        button.layer.borderColor = UIColor.red.cgColor
        
        let stopIcon = UIImage(named: "stop")
        button.setImage(stopIcon, for: .normal)
        
        let attribute = NSMutableAttributedString(string: "Stop", attributes: [.font : UIFont.systemFont(ofSize: 18), .foregroundColor : UIColor.white])
        button.setAttributedTitle(attribute, for: .normal)
        button.backgroundColor = .red
        button.titleLabel?.textColor = .white
                
        return button
    }()


    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }
    
    
    func configureView() {
        view.addSubview(otherView)
        otherView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            otherView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            otherView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        let buttonStack = UIStackView(arrangedSubviews: [startButton, stopButton])
        view.addSubview(buttonStack)
        buttonStack.translatesAutoresizingMaskIntoConstraints = false
        buttonStack.backgroundColor = .red
        buttonStack.alignment = .fill
        buttonStack.distribution = .fillEqually
        buttonStack.spacing = 10

        
        NSLayoutConstraint.activate([
                                        buttonStack.topAnchor.constraint(equalTo: self.otherView.bottomAnchor, constant: 30),
            buttonStack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            buttonStack.heightAnchor.constraint(equalToConstant: 40),
            buttonStack.widthAnchor.constraint(equalToConstant: self.view.frame.width * 0.8)
        ])
    }



}
