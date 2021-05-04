//
//  ProfileFooter.swift
//  ChatApplication
//
//  Created by Yersultan Nalikhan on 21.03.2021.
//

import UIKit

protocol ProfileFooeterDelegate: class {
    func handleLogout()
}

class ProfileFooter: UIView {
    
    //MARK: PROPERTIES

    weak var delegate: ProfileFooeterDelegate?
    
    
    private lazy var logoutButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Logout", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.backgroundColor = .systemPink
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(handleLogout), for: .touchUpInside)
        return button
    }()
    
    
    
    
    
    
    //MARK: LIFECYCLE

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(logoutButton)
        logoutButton.anchor(left: leftAnchor, right: rightAnchor, paddingLeft: 32, paddingRight: 32)
        logoutButton.centerY(inView: self)
        logoutButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    //MARK: - SELECTORS

    @objc func handleLogout() {
        delegate?.handleLogout()
    }
    
    
    
    
}


