//
//  Language.swift
//  boilerplate
//
//  Created by Kanika.Sharma on 26/06/24.
//

import Foundation

enum Language: String {
    case russian = "ru"
    case english_us = "en"
    case spanish = "es"
    case arabic = "ar"
}

struct LanguageType {
    var name: Language
    var isRTL: Bool
}

let languages = [
    LanguageType(name: .russian, isRTL: false),
    LanguageType(name: .english_us, isRTL: false),
    LanguageType(name: .spanish, isRTL: false),
    LanguageType(name: .arabic, isRTL: true)
]
