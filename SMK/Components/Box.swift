//
//  Box.swift
//  SMK
//
//  Created by 이정후 on 2023/03/29.
//

import SwiftUI

struct Box: View {
    
    var boxItem: BoxModel
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Image(boxItem.image)
                .resizable()
                .frame(width: 300, height: 300)
            
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

struct Box_Previews: PreviewProvider {
    static var previews: some View {
        Box(boxItem: boxmodel[0])
    }
}
