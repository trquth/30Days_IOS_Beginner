//
//  ActivityIndicator.swift
//  Hacktoberfest2020
//
//  Created by Thien Tran on 10/19/20.
//

import UIKit

class ActivityIndicator : UIActivityIndicatorView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.style = .large
        self.color = .orange
        self.backgroundColor = UIColor(white: 0.2, alpha: 0.6)
        self.layer.cornerRadius = 5
        self.startAnimating()
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

