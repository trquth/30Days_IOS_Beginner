//
//  ShortTextLabel.swift
//  Hacktoberfest2020
//
//  Created by Thien Tran on 10/17/20.
//

import UIKit

class Label : UILabel {
    
    var content : NSMutableAttributedString!
    let shortContentText = "Tran Quan Thien\n(Jack White)"
    let longContentText = "Tran Quan Thien (Jack White) Birthday 25/01/1993 Developer Live in Ho Chi Minh City"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let text = longContentText
        
        let tracking : NSAttributedString.Key = {
            if #available(iOS 14.0, *){
                return .tracking
            }else{
                return kCTTrackingAttributeName as NSAttributedString.Key
            }
        }()
        
        content = NSMutableAttributedString(string: text, attributes: [.font : UIFont(name: "SourceCodePro-Bold", size: 16),.foregroundColor : UIColor.orange, tracking : -0.2])
        
        let alias = (content.string as NSString).range(of: "(Jack White)")
        content.addAttributes([.font : UIFont(name: "SourceCodePro-Regular", size: 25),
                               .strokeColor : UIColor.purple, .strokeWidth : 2,
        ], range: alias)
        
        
        self.attributedText = content
        self.numberOfLines = 2
        self.textAlignment = .center
        self.lineBreakMode = .byTruncatingMiddle
        self.allowsDefaultTighteningForTruncation = false
        self.adjustsFontSizeToFitWidth = true
        
        self.sizeToFit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
