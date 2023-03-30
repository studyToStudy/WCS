//
//  CView.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI
import CodeEditor

struct CView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Hello World!") {
                    CHello()
                }
                NavigationLink("C언어란") {
                    AboutC()
                }
                NavigationLink("C언어의 특징") {
                    AboutCView()
                }
                NavigationLink("C언어는 어디에 사용되나요?") {
                    WhereUseView()
                }
                NavigationLink("포인터") {
                    PointerView()
                }
                NavigationLink("저장수명") {
                    StorageDuration()
                }
                NavigationLink("저수준 언어로서의 C") {
                    LowAndHigh()
                }
            }
            .navigationTitle("C")
        }
    }
}

struct CHello: View {
  #if os(macOS)
    @AppStorage("fontsize") var fontSize = Int(NSFont.systemFontSize)
  #endif
  @State private var source = """
                                #include <stdio.h>
                                
                                int main() {
                                    printf("Hello World!");
                                
                                    return 0
                                }
                                """
  @State private var language = CodeEditor.Language.c
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

struct AboutC: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         C언어는 1972년 데니스 리치와 켄 톰슨이 만든 프로그래밍 언어로서, 세계적으로 많이 쓰이는 프로그래밍 언어 중 하나입니다.
                         
                         C는 UNIX 운영체제의 개발을 위해 탄생되었으며, 현재까지도 운영체제 또는 운영체제 기반의 응용 프로그램을 개발할때 사용되는 효율성이 높은 프로그래밍 언어이며, 임베디드시스템 소프트웨어 분야, 모바일 분야, 자율 컴퓨팅 분야에도 널리 사용되고 있습니다.
                         
                         파일 확장자는 .c
                         """)
                    .padding()
//                    .offset(y: -200)
                }
                }
            .navigationTitle("C언어란")
        }
    }
}

struct WhereUseView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         C는 운영체제(OS) 개발을 위해 탄생한 언어입니다. 따라서 하드웨어를 제어하고 실행 효율을 높혀야 하는 곳에 주로 사용됩니다.
                         대표적으로 특정 하드웨어에 최적화된 기능이 필요한 임베디드 프로그래밍에 가장 많이 쓰입니다.
                         임베디드, 컴파일러, 게임 및 애니메이션, 데이터 베이스 등 다양한 곳에서 활용할 수 있습니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .padding()
                    .lineSpacing(1)
//                    .offset(y: )
                }
            }
            .navigationTitle("C언어의 사용")
        }
    }
}

struct AboutCView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack {
                        Text("""
                            C언어의 장점은 다음과 같습니다.
                            
                            1. C언어로 작성된 프로그램은 다양한 하드웨어로의 범용성이 좋습니다.
                            2. C언어는 절차 지향 프로그래밍 언어로서, 코드가 복잡하지 않아 상대적으로 유지보수에 용이합니다.
                            3. C언어는 저급 언어의 특징을 가지고 있어, 어셈블리어 수준으로 하드웨어 제어가 가능합니다.
                            4. C언어는 코드가 간결하여, 완성된 프로그램의 크기가 작고 실행속도 또한 빠릅니다.
                            
                            C언어의 단점은 다음과 같습니다.
                            
                            1. C언어는 저급 언어의 특징을 가지고 있어, 자바와 파이썬 같은 고급 언어보다 배우기 쉽지 않습니다.
                            2. C언어는 다른 언어와 달리 시스템 자원을 직접 제어할 수 있으므로, 프로그래밍에 있어 세심한 주의를 기울여야 합니다.
                            """)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(1)
                        .padding()
                    }
                }
            }
            .navigationTitle("C언어의 특징")
        }
    }
}

struct PointerView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         데이터의 주소값이란 해당 데이터가 저장된 메모리의 시작 주소를 의미합니다.
                         C언어에서는 이러한 주소값을 1바이트 크기의 메모리 공간으로 나누어 표현합니다.
                         예를 들어, int형 데이터는 4바이트의 크기를 가지지만, int형 데이터의 주소값은 시작 주소 1바이트만을 가리킵니다.
                         
                         포인터는 메모리의 주소값을 저장하는 변수이며, 포인터 변수라고도 부릅니다.
                         포인터와 연관되어 사용되는 연산자는 주소 연산자(&)와 참조 연산자(*)가 있습니다.
                         
                         주소 연산자(&)는 변수 이름 앞에 사용하여, 해당 변수의 주소값을 반환합니다.
                         '&'는 앰퍼샌드라고 부르며, 번지 연산자라고도 부릅니다.
                         
                         참조연산자(*)는 포인터의 이름이나 주소 앞에 사용하여, 포인터에 가리키는 주소에 저장된 값을 반환합니다.
                         
                         포인터 선언시, 타입과 포인터이름이 필요하며 타입이란 포인터가 가리키고자 하는 변수의 타입을 명시합니다.
                         포인터 이름은 포인터가 선언된 후에 포인터가 접근하기 위해 사용됩니다.
                         
                         의도치 않은 메모리의 값 변경을 방지하기 위해 포인터 선언후 참조 연산자(*)를 사용하여 반드시 먼저 초기화되어야 합니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
                    
                }
            }
            .navigationTitle("포인터")
        }
    }
}

struct StorageDuration: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         C언어에서는 스택과 힙의 개념을 사용하지 않고, 저장수명(storage duration)이라는 개념을 사용합니다.
                         즉 C언어의 추상기계는 스택과 힙을 모르며, 이에 의지하여 동작하지 않습니다.
                         
                         저장수명은 크게 static, thread, automatic, allocated 네 종류가 있습니다.
                         static은 프로그램의 시작부터 끝 부분까지 존재하고, thread는 스레드 별로 분리하여 존재, automatic은 해당 블록이 시작할 때 생성되어 끝날 때 소멸되고, allocated는 메모리 할당 함수들에 의해 생성되고 free() 함수로 해제될 때까지 존재합니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
                    
                }
            }
            .navigationTitle("저장수명")
        }
    }
}

struct LowAndHigh: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         C언어는 저수준 언어로서의 C
                         
                         정수형 모델, 비트 연산, 공용체, 포인터, 형변환 규칙 등 다양한 부분에서 기계에 대한 직접적인 접근을 의도하고 있습니다.
                         C언어는 어셈블리어와 비교할만한 효율을 가지도록 설계되었습니다. C언어가 주로 쓰이는 곳이 저수준 제어가 필요한 분야이다 보니, 많은 C언어 구현체들이 인라인 어셈블러를 통해 어셈블리 코드를 코드안에 직접 집어넣을 수 있는 확장 기능을 지원합니다.

                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
                    
                }
            }
            .navigationTitle("저수준 언어로서의 C")
        }
    }
}

struct CView_Previews: PreviewProvider {
    static var previews: some View {
        CView()
//        CHello()
//        AboutC()
//        CdataStructure()
//        AboutCView()
    }
}
