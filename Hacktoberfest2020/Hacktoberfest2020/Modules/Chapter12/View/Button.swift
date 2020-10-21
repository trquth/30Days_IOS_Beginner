//
//  Button.swift
//  Hacktoberfest2020
//
//  Created by Thien Tran on 10/19/20.
//

import UIKit

class Button : UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 5
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.setTitleColor(.black, for: .normal)
        
        self.titleLabel?.numberOfLines = 2
        self.titleLabel?.textAlignment = .center
        //self.titleLabel?.adjustsFontSizeToFitWidth = true
        
        self.sizeToFit()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
