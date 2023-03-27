//
//  C#View.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI

struct C_View: View {
    var body: some View {
        NavigationStack {
            List {
                Text("C#")
            }
            .navigationTitle("C#")
        }
    }
}


struct C_View_Previews: PreviewProvider {
    static var previews: some View {
        C_View()
    }
}
