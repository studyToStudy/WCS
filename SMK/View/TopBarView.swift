//
//  TopBarView.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI

enum topBar:String, CaseIterable {
    case algorithm = "알고리즘"
    case dataStructure = "자료구조"
}

struct testView : View {
    var ex : topBar
    var body: some View {
        switch ex {
        case .algorithm:
            AlgoView()
        case .dataStructure:
            DataSt()
        }
    }
}

struct TopBarView: View {
    
    @State private var selectedPicker: topBar = .algorithm
    @Namespace private var animation
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack {
            animate()
            testView(ex: selectedPicker)
        }
    }

    @ViewBuilder
    private func animate() -> some View {
        HStack {
            ForEach(topBar.allCases, id: \.self) { items in
                VStack {
                    Text(items.rawValue)
                        .font(.title3)
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .foregroundColor(colorScheme == .dark ? .white : .black)
                    
                    if selectedPicker == items {
                        Capsule()
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "info", in: animation)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedPicker = items
                    }
                }
            }
        }
    }
}

    struct HotView_Previews: PreviewProvider {
        static var previews: some View {
            TopBarView()
        }
    }
