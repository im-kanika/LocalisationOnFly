//
//  LocalizationService.swift
//  boilerplate
//
//  Created by Kanika.Sharma on 26/06/24.
//

import Foundation

class LocalizationService {
    
    var language: Language {
        get {
            guard let languageString = UserDefaults.standard.string(forKey: "language") else {
                return .english_us
            }
            return Language(rawValue: languageString) ?? .english_us
        } set {
            if newValue != language {
                UserDefaults.standard.setValue(newValue.rawValue, forKey: "language")
            }
        }
    }
    
    var isRTL: Bool {
        get {
            let RTLStatus = UserDefaults.standard.bool(forKey: "isRTL")
            return RTLStatus
        } set {
            if newValue != isRTL {
                UserDefaults.standard.setValue(newValue, forKey: "isRTL")
            }
        }
    }
}
