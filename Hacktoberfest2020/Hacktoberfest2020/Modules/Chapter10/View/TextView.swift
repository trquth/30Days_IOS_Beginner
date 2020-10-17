//
//  TextView.swift
//  Hacktoberfest2020
//
//  Created by Thien Tran on 10/17/20.
//

import UIKit

class TextView : UITextView {
    
    var content : NSMutableAttributedString!
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        
        let lyric = "Ai hỏi cháu, cháu học trường nào đây Bé nào ngoan lại múa hát thật hay Cô là mẹ và các cháu là con Trường của cháu đây là trường mầm non. Ai hỏi cháu có trường nào vui thế Có bạn đông mà sao lớp sạch ghê Khi về nhà là lại nhớ trường hơn Trường của cháu đây là trường mầm non."
        
        content = NSMutableAttributedString(string: lyric, attributes: [.font : UIFont(name: "SourceCodePro-Regular", size: 18), .foregroundColor : UIColor.darkGray])
        
        let hightlightText = (content.string as NSString).range(of: "cháu")
        content.addAttributes([.font : UIFont(name: "SourceCodePro-Bold", size: 22), .foregroundColor : UIColor.red], range: hightlightText)
        self.attributedText = content
        //self.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 5)
        //self.isScrollEnabled = false'
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.headIndent = 20
        paragraphStyle.tailIndent = -20
        paragraphStyle.firstLineHeadIndent = 30
        paragraphStyle.alignment = .justified
        //paragraphStyle.paragraphSpacing = 50
        paragraphStyle.lineSpacing = 5
        content.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, 1))
        content.addAttributes([.font : UIFont(name: "SourceCodePro-Bold", size: 25)], range: NSMakeRange(0, 1))
        self.attributedText = content
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
