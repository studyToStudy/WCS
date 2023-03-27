//
//  Card.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI

struct Card: View {
    
    var cardItem: ProgramLang
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Image(cardItem.image)
                .resizable()
                .frame(width: 100, height: 100)
            
//            Text(cardItem.title)
//                .frame(alignment: .center)
//                .font(.title)
//                .foregroundColor(.black)
        }
        .padding(30)
        .background(.linearGradient(colors: [.white], startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(cardItem: programLanguage[0])
    }
}
