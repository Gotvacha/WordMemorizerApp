//
//  Language.swift
//  WordMemorizer
//
//  Created by Vladiator on 25.07.24.
//

import Foundation

enum Language: String, CaseIterable {
    case Bulgarian = "BUL"
    case English = "ENG"
    case German = "GER"
    case Turkish = "TUR"
    
    init() {
        self = .Bulgarian
    }
    
    init(is languageAbbriviation: String) {
        let languageAbbriviation = languageAbbriviation.uppercased()
        switch languageAbbriviation {
        case "BUL":
            self = .Bulgarian
        case "ENG":
            self = .English
        case "GER":
            self = .German
        case "TUR":
            self = .Turkish
        default:
            self = .Bulgarian // change in the future
        }
    }
}
