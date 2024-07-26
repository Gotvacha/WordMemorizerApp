//
//  AddWordView.swift
//  WordMemorizer
//
//  Created by Vladiator on 26.07.24.
//

import SwiftUI

struct AddWordView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var words: [Word]
    @State private var fromLanguage = Language.English
    @State private var toLanguage = Language.Bulgarian
    @State private var foreignWord = ""
    @State private var translatedWord = ""
    @State private var image: String?

    var body: some View {
        Form {
            Section(header: Text("Word Details")) {
                Picker("From Language", selection: $fromLanguage) {
                                    ForEach(Language.allCases, id: \.self) { language in
                                        Text(language.rawValue).tag(language)
                                            .padding()
                                    }
                                }
                
                TextField("Foreign Word", text: $foreignWord)
                
                Picker("To Language", selection: $toLanguage) {
                                    ForEach(Language.allCases, id: \.self) { language in
                                        Text(language.rawValue).tag(language)
                                            .padding()
                                    }
                                }
                
                TextField("Translated Word", text: $translatedWord)
            }
            
            Button(action: addWord) {
                Text("Add Word")
                    .foregroundColor(.blue)
            }
        }
        .navigationTitle("Add New Word")
    }
    
    private func addWord() {
        let newWord = Word(from: fromLanguage, to: toLanguage, word: foreignWord, translation: translatedWord, image: image)
        words.append(newWord)
        presentationMode.wrappedValue.dismiss()
    }
}
