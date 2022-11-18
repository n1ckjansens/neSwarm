//
//  String + Extension.swift
//  NeSwarm
//
//  Created by Admin on 19.11.2022.
//

import Foundation

extension String {

    enum Regex: String {
        case emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    }
    
    func isEmailValid () -> Bool {
        return applyPredicateOnRegex(regexStr: Regex.emailRegex.rawValue)
    }
    
    func validatePassword(min: Int = 8, max: Int = 8) -> Bool {
        var passwordRegex = ""
        if min >= max{
            passwordRegex = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{\(min),}$"
        }else{
            passwordRegex = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{\(min),\(max)}$"
        }
        return applyPredicateOnRegex(regexStr: passwordRegex)
    }

    
    func applyPredicateOnRegex(regexStr: String) -> Bool{
        let trimmedString = self.trimmingCharacters(in: .whitespaces)
        let validateOtherString = NSPredicate(format: "SELF MATCHES %@", regexStr)
        let isValidateOtherString = validateOtherString.evaluate(with: trimmedString)
        return isValidateOtherString
    }
    
}
