//
//  TextField.swift
//  Hacktoberfest2020
//
//  Created by Thien Tran on 10/17/20.
//

import UIKit

class TextField : UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.borderStyle = .roundedRect
        
        self.clearButtonMode = .whileEditing
        self.leftViewMode = .unlessEditing
        
        let cycleView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        cycleView.backgroundColor = .orange
        cycleView.layer.cornerRadius = 10
        self.leftView  = cycleView
        
        self.placeholder = "Input something"
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
