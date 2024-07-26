//
//  WordDetailView.swift
//  WordMemorizer
//
//  Created by Vladiator on 25.07.24.
//

import SwiftUI

struct WordDetailView: View {
    let word: Word
    
    var body: some View {
        VStack {
            Text("From \(word.fromLanguage) to \(word.toLanguage)")
                .padding(.bottom, 20)
                
            if let imageName = word.image {
                Image(imageName)
                                .resizable()
                                .scaledToFit()
                                .padding()
            }
            
            HStack {
                Text(word.foreignWord)
                    .padding(.trailing, 5)
                Image(systemName: "arrowshape.turn.up.right")
                    .padding(.horizontal, 10)
                    .frame(alignment: .center)
                Text(word.translatedWord)
                    .padding(.leading, 5)
            }
            if let wordDescription = word.description {
                Text("Description: \(wordDescription)")
                    .padding(.vertical, 20)
            }
        }
    }
}

#Preview {
    let word = Word(from: Language.English, to: Language.Bulgarian, word: "innate", translation: "вроден", image: "fish")
    
    return WordDetailView(word: word)
}
