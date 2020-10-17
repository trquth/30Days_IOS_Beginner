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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
    }
    
    func configureView() {
        view.addSubview(contentLabel)
        contentLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([contentLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                                     contentLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
                                     contentLabel.heightAnchor.constraint(equalToConstant: 200),
                                     contentLabel.widthAnchor.constraint(equalToConstant: self.view.frame.width)
        ])
    }
}
