//
//  ShortTextLabel.swift
//  Hacktoberfest2020
//
//  Created by Thien Tran on 10/17/20.
//

import UIKit

class ShortLabel : UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.text = "Tran Quan Thien (Jack)"
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
