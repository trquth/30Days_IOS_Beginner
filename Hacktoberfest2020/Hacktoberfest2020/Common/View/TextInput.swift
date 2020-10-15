//
//  TextInput.swift
//  Hacktoberfest2020
//
//  Created by Thien Tran on 10/12/20.
//

import UIKit

class CustomizeTextField: UITextField {
    struct  Constant {
        static let horizontalPadding : CGFloat = 10
        static let verticalPadding : CGFloat = 8
    }
    
    let padding = UIEdgeInsets(top: Constant.verticalPadding, left: Constant.horizontalPadding, bottom: Constant.verticalPadding, right: Constant.horizontalPadding)
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
