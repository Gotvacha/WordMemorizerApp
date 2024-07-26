//
//  Word.swift
//  WordMemorizer
//
//  Created by Vladiator on 25.07.24.
//

import Foundation

struct Word {
    let fromLanguage: Language
    let toLanguage: Language
    let foreignWord: String
    let translatedWord: String
    let description: String?
    let image: String?
    
    init(from fromLanguage: Language, to toLanguage: Language, word foreignWord: String, translation translatedWord: String, description: String? = nil, image: String? = nil) {
        self.fromLanguage = fromLanguage
        self.toLanguage = toLanguage
        self.foreignWord = foreignWord
        self.translatedWord = translatedWord
        self.description = description
        self.image = image
    }
}
