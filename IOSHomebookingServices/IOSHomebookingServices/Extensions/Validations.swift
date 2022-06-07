//
//  Validations.swift
//  IOSHomebookingServices
//
//  Created by Rishita Panchal on 04/05/22.
//

import Foundation

// MARK: Extension String
extension String {
    
    func isEmailValid() -> Bool {
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        return applyPredicateOnRegEx(regExStr: regEx)
    }
    
    func applyPredicateOnRegEx(regExStr: String) -> Bool {
        let trimmedString = self.trimmingCharacters(in: .whitespaces)
        let validateOtherString = NSPredicate(format: "SELF MATCHES %@", regExStr)
        let isValidateOtherString = validateOtherString.evaluate(with: trimmedString)
        return isValidateOtherString
    }
    
}
