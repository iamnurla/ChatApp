//
//  CustomTextfield.swift
//  ChatApplication
//
//  Created by Yersultan Nalikhan on 08.03.2021.
//

import UIKit

class CustomTextfield: UITextField {
    
    init(placeholder:String) {
        super.init(frame: .zero)
        
        borderStyle = .none
        font = UIFont.systemFont(ofSize: 16)
        textColor = .white
        keyboardAppearance = .dark
        attributedPlaceholder = NSAttributedString(string: placeholder,
                                                   attributes:[.foregroundColor : UIColor.white])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
