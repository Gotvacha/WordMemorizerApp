//
//  WordTableCellView.swift
//  WordMemorizer
//
//  Created by Vladiator on 26.07.24.
//

import SwiftUI

struct WordTableCellView: View {
    let word: Word
    
    var body: some View {
        NavigationLink(destination: WordDetailView(word: word)) {
            HStack {
                HStack {
                    Text(word.foreignWord)
                        
                        .foregroundColor(.white)
                }
                .padding(.horizontal,10)
                .background(Color.blue)
                .cornerRadius(10)
                
                Text("|")
                
                HStack {
                    Text(word.translatedWord)
                    Text(word.toLanguage.rawValue)
                }
                .padding(.horizontal, 10)
                Spacer()
                if let imageName = word.image {
                    Image(imageName)
                        .resizable()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                        .padding(.trailing, 20)
                }
            }
        }
    }
}

#Preview {
    let word = Word(from: Language.English, to: Language.Bulgarian, word: "innate", translation: "вроден")
    
    return WordTableCellView(word: word)
}
