//
//  CplusView.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI
import CodeEditor

struct CplusView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Hello World!") {
                    CPlusHello()
                }
                NavigationLink("C++이란") {
                    AboutCplusplus()
                }
                NavigationLink("C++ 특징") {
                    ImpactCplusplus()
                }
                NavigationLink("템플릿") {
                    TemplateCplus()
                }
                NavigationLink("C++는 어디에 사용되나요?") {
                    WeherCplusplus()
                }
            }
            .navigationTitle("C++")
        }
    }
}

struct CPlusHello: View {
  #if os(macOS)
    @AppStorage("fontsize") var fontSize = Int(NSFont.systemFontSize)
  #endif
  @State private var source = """
                                #include <iostream>
                                
                                int main() {
                                    std::cout << "Hello World!";
                                }
                                """
  @State private var language = CodeEditor.Language.cpp
  @State private var theme    = CodeEditor.ThemeName.ocean

  var body: some View {
      NavigationStack {
          VStack(spacing: 0) {
            HStack {
              Picker("Language", selection: $language) {
                ForEach(CodeEditor.availableLanguages) { language in
                  Text("\(language.rawValue.capitalized)")
                    .tag(language)
                }
              }
              Picker("Theme", selection: $theme) {
                ForEach(CodeEditor.availableThemes) { theme in
                  Text("\(theme.rawValue.capitalized)")
                    .tag(theme)
                }
              }
            }
            .padding()
          
            Divider()
          
            #if os(macOS)
              CodeEditor(source: $source, language: language, theme: theme,
                         fontSize: .init(get: { CGFloat(fontSize)  },
                                         set: { fontSize = Int($0) }))
                .frame(minWidth: 640, minHeight: 480)
            #else
              CodeEditor(source: $source, language: language, theme: theme)
            #endif
          }
          .navigationTitle("Hello World!")
      }
  }
}

struct AboutCplusplus: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         C++는 기존 C언어에 여러가지 기능을 추가하여 만든 프로그래밍 언어입니다.
                         C++은 C언어에서 절차 지향적 언어의 특징을 가져왔을 뿐 아니라, 클래스를 사용하는 객체 지향적 언어인 동시에 템플릿으로 대변되는
                         일반화 프로그래밍 방식의 언어이기도 합니다.
                         
                         파일 확장자는 .cpp
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("C++란")
        }
    }
}

struct ImpactCplusplus: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         C++는 객체 지향 프로그래밍을 지원하지만, C++의 객체 지향은 타 프로그래밍 언어와의 성격이 조금 다릅니다.
                         대부분의 객체지향 언어에서는 많은 부분을 런타임에 처리하여 메모리를 자동으로 관리하지만, C++에서는 최대한 많은 것을 컴파일 타임에
                         처리하는 것을 지향하며 메모리 등을 프로그래머가 직접 관리하기 떄문에 전반적인 클래스 디자인이 다르다고 할 수 있습니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("C++ 특징")
        }
    }
}

struct TemplateCplus: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         템플릿(template)은 C++ 프로그래밍 언어의 한 기능으로, 함수와 클래스가 제네릭과 동작할 수 있게 도와줍니다.
                         함수나 클래스가 개별적으로 다시 작성하지 않고도 각기 다른 수많은 자료형에서 동작할 수 있게 합니다.
                         
                         템플릿의 종류는 함수 템플릿과 클래스 템플릿 두 가지가 있습니다. C++14부터는 변수 템플릿이 있습니다.
                         
                         함수 템플릿은 여러 다른 자료형을 템플릿 인자 (<>)로 받아, 함수 내부에서 활용할 수 있도록 한 것입니다.
                         여러 다른 자료형에 대하여 같은 역할을 하는 하나의 템플릿으롤 표현할 수 있다는 점입니다.
                         
                         클래스 템플릿은 템플릿 변수에따라 생성할 수 있게 하는 기능입니다. 클래스 템플릿은 컨테이너의 용도로 많이 쓰입니다.
                         C++ 표준 라이브러리에는 다수의 템플릿들이 있는데, 벡터와 같은 컨테이너들은 표준 템플릿 라이브러리로부터 유래했습니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("템플릿")
        }
    }
}

struct WeherCplusplus: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         C++ 또한 C언어와 마찬가지로 하드웨어와 가깝고 리소스를 쉽게 조작 할 수 있으며 CPU 직얍적 기능에 대한 절차적 프로그래밍을 제공하고
                         속도또한 빠릅니다.
                         
                         C++의 이런 장점은 다양한 분야에서 사용되어집니다.
                         게임, GUI 기반 Application (Adobe 등), 데이터 베이스, OS, Firefox, Maya 3D, 클라우드 분산 시스템 등
                         많은 곳에서 활용되고있습니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("C++의 사용")
        }
    }
}

struct CplusView_Previews: PreviewProvider {
    static var previews: some View {
        CplusView()
    }
}
