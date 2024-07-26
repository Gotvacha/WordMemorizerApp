//
//  ContentView.swift
//  WordMemorizer
//
//  Created by Vladiator on 25.07.24.
//

import SwiftUI

struct ContentView: View {
    
    let sampleWords = [
        Word(from: Language(is: "ENG"), to: Language(is: "Bul"), word: "Hello", translation: "Здрасти"),
        Word(from: Language(is: "ENG"), to: Language(is: "Bul"), word: "bear", translation: "мечка", image: "bear"),
        Word(from: Language(is: "ENG"), to: Language(is: "Bul"), word: "fish", translation: "риба", image: "fish"),
        Word(from: Language(is: "ENG"), to: Language(is: "Bul"), word: "cat", translation: "котка", image: "cat"),
        
        ]
    
    var body: some View {
        WordTableView(words: sampleWords)
    }
}

#Preview {
    ContentView()
}
