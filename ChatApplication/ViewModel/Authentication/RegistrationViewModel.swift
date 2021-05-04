//
//  RegistrationViewModel.swift
//  ChatApplication
//
//  Created by Yersultan Nalikhan on 09.03.2021.
//

import UIKit

struct RegistrationViewModel: AuthenticationProtocol {
    var email : String?
    var password : String?
    var fullname : String?
    var username : String?
    
    
    var formIsValid: Bool {
        return email?.isEmpty == false
            && password?.isEmpty == false
            && fullname?.isEmpty == false
            && username?.isEmpty == false
    }
    
    var buttonBackgroundColor: UIColor{
        return formIsValid ? #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1) : #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1).withAlphaComponent(0.5)
    }
    var buttonTitleColor: UIColor{
        return formIsValid ? .white : UIColor(white: 1, alpha: 0.67)
    }
}
