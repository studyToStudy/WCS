//
//  DesignPatternView.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI

import SwiftUI

struct SearchViewSe: View {    
    var body: some View {
        Text("He")
    }
    
    struct SearchVi: View {
        @State private var searchText = ""
        
        var body: some View {
            
            Text("Helo")
        }
        
        struct ContentViewSe_Previews: PreviewProvider {
            static var previews: some View {
                SearchViewSe()
            }
        }
    }
}
 
