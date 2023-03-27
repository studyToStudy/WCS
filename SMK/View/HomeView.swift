//
//  HomeView.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    HStack {
                        NavigationLink(destination: ProgramView()) {
                            Card(cardItem: programLanguage[6])
                        }
                        .shadow(radius: 6)
                        .buttonStyle(.plain)
                        
                        
                        NavigationLink(destination: CView()) {
                            Card(cardItem: programLanguage[0])
                        }
                        .shadow(radius: 6)
                        .buttonStyle(.plain)
                        
                    }
                    
                    
                    HStack {
                        NavigationLink(destination: CplusView()) {
                            Card(cardItem: programLanguage[2])
                        }
                        .shadow(radius: 6)
                        .buttonStyle(.plain)
                        
                        NavigationLink(destination: C_View()) {
                            Card(cardItem: programLanguage[3])
                        }
                        .shadow(radius: 6)
                        .buttonStyle(.plain)
                    }
                    
                    HStack {
                        NavigationLink(destination: JavaView()) {
                            Card(cardItem: programLanguage[4])
                        }
                        .shadow(radius: 6)
                        .buttonStyle(.plain)
                        
                        NavigationLink(destination: JavascriptView()) {
                            Card(cardItem: programLanguage[5])
                        }
                        .shadow(radius: 6)
                        .buttonStyle(.plain)
                    }
                    NavigationLink(destination: PythonView()) {
                        Card(cardItem: programLanguage[1])
                    }
                    .shadow(radius: 6)
                    .buttonStyle(.plain)

                }
            }
            .navigationTitle("세상의 모든 코딩지식")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
