//
//  ContentView.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    @State var isLoading: Bool = true
    
    var body: some View {
        ZStack {
            TabView(selection: $selection) {
                HomeView()
                    .tabItem {
                        Image(systemName: "cpu.fill")
                            .foregroundColor(.red)
                        Text("Lang")
                            .tag(1)
                    }
                TopBarView()
                    .tabItem {
                        Image(systemName: "2.square.fill")
                        Text("Algorythm")
                            .tag(0)
                    }
            }
            .toolbarColorScheme(.dark, for: .tabBar)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
