//
//  WordTableView.swift
//  WordMemorizer
//
//  Created by Vladiator on 25.07.24.
//

import SwiftUI


struct WordTableView: View {
    @State private var words: [Word]
    @State private var isPresentingAddWordView = false
    @State private var selectedLanguage: Language? = nil
        
    init(words: [Word]) {
        _words = State(initialValue: words)
    }
    
    private var filteredWords: [Word] {
        if let selectedLanguage = selectedLanguage {
            return words.filter { $0.fromLanguage == selectedLanguage}
        } else {
            return words
        }
    }
    
    var body: some View {
        NavigationView {
            List(filteredWords, id: \.foreignWord) { word in
                WordTableCellView(word: word)
            }
            .navigationTitle("Word List")
            .navigationBarItems(trailing: Button(action: {
                isPresentingAddWordView = true
            }) {
                Image(systemName: "plus")
                    .imageScale(.large)
                    .accessibility(label: Text("Add New Word"))
            })
            .sheet(isPresented: $isPresentingAddWordView) {
                AddWordView(words: $words)
            }
        }
        HStack {
            ForEach(Language.allCases, id: \.self) { language in
                Button(action: {
                    selectedLanguage = language
                }) {
                    Text(language.rawValue)
                        .padding()
                        .background(selectedLanguage == language ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
        }
        .padding()
    }
}

#Preview {
    let words = [
        Word(from: Language.English, to: Language.Bulgarian, word: "innat", translation: "вроден"),
        Word(from: Language.English, to: Language.Bulgarian, word: "fish", translation: "риба", image: "fish"),
        Word(from: Language.English, to: Language.Bulgarian, word: "bear", translation: "мечка", image: "bear")
    ]
    
    return WordTableView(words: words)
}
//buttons: add new, add meaning, delete, edit meaning, quiz
//table of words selected by a language from: and to:
//when inserting a word translation it should appear in tables: from-to and to-from
