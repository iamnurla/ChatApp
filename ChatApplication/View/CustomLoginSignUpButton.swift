//
//  CustomLoginSignUpButton.swift
//  ChatApplication
//
//  Created by Yersultan Nalikhan on 09.03.2021.
//

import UIKit

class CustomLoginSignUpButton: UIButton {
    init(name: String) {
        super.init(frame: .zero)
        
        setTitle( name, for: .normal)
        setHeight(50)
        layer.cornerRadius = 5
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        setTitleColor(.white, for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
