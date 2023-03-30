//
//  RustView.swift
//  SMK
//
//  Created by 이정후 on 2023/03/28.
//

import SwiftUI
import CodeEditor

struct RustView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Hello World!"){
                    RustHelloView()
                }
                NavigationLink("RUST란"){
                    AboutRustView()
                }
                NavigationLink("RUST의 특징"){
                    ImpactRustView()
                }
                NavigationLink("소유권과 수명"){
                    PointRustView()
                }
                NavigationLink("기본 예시 코드"){
                    RustPracticeCodeView()
                }
                NavigationLink("RUST가 사용되는 곳"){
                    WhereToRustView()
                }
                NavigationLink("장점과 단점"){
                    GoodAndLustView()
                }
            }
            .navigationTitle("RUST")
        }
    }
}

struct RustHelloView: View {
  #if os(macOS)
    @AppStorage("fontsize") var fontSize = Int(NSFont.systemFontSize)
  #endif
  @State private var source = """
                                fn main() {
                                    println("Hello World!");
                                
                                }
                                """
    @State private var language = CodeEditor.Language.rust
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

struct AboutRustView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         러스트 재단에서 개발되고 있는 메모리 안정성과 성능 및 편의성에 중점을 둔 프로그래밍 언어입니다.
                         가비지 컬렉터 없이 메모리 안정성을 제공하는 대표적인 언어로서, C++의 대항마로 등장하였습니다.
                         
                         러스트를 대표하는 키워드는 안정성, 속도, 병렬 프로그래밍, 함수형 프로그래밍, 시스템 프로그래밍이 있습니다.
                         Go언어 보다는 반 년 늦게 세상에 등장했고 Go언어와 라이벌 관계로 엮이기도 합니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("RUST란")
        }
    }
}

struct ImpactRustView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         RUST는 현대적인 프로그래밍 언어이지만, C/C++과 동등한 수준의 속도를 제공하면서 안정성, 동시성을 목표로 합니다.
                         함수형 프로그래밍 언어로부터 발전된 타입 시스템을 도입하였으며, 클래스 대신 다른 언어에서의 인터페이스와 비슷한 트레이트라는 개념을 기반으로
                         다형성을 달성합니다.
                         
                         RUST는 null 포인터 에러가 언어 차원에서 존재할 수 없습니다. null이 존재하지 않으며 언어 차원에서 지원하는 Option<T>라는 제네릭 enum이 존재합니다.
                         Option<T>는 Some(T) 혹은 None 둘 중 하나로 지정할 수 있으며, None이 기존 프로그래밍 언어의 Null 역할을 담당합니다.
                         이 Option<T>를 통해서 데이터가 없다는 상태를 관리합니다.
                         
                         파일 확장자는 .rs
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("RUST의 특징")
        }
    }
}

struct PointRustView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         RUST는 프로그램 데이터에 대한 생각과 관념이 타 프로그래밍 언어와 큰 차이가 있습니다.
                         
                         일부 언어에서는 프로그램이 실행될 때 더이상 사용되지 않는 메모리를 정기적으로 찾는 가비지 컬렉터 기능이 있습니다. 이는 프로그램의 속도를 저하시키는
                         요인이기도 합니다.
                         
                         소유권(Ownership)은 RUST 프로그램이 메모리를 관리하는 방식의 일련의 규칙입니다. 소유권 규칙은 다음과 같습니다.
                         1. RUST의 각 값에는 소유자가 있습니다.
                         2. 한 번에 한 명의 소유자만 있을 수 있습니다.
                         3. 소유자가 값을 벗어나면 값은 삭제됩니다.
                         
                         RUST에서 모든 값은 그 값이 대입된 변수나 구조체 필드, 넘겨받은 함수 인자 등의 이름에 귀속됩니다. 이름은 자기에게 귀속된 값에 대한 소유권을 가지며, 다른 변수에게 값을 대입하면
                         그 이름으로 소유권이 이전되고, 기존 변수는 파기되죠, 그러므로 기존 변수에 대한 소멸자는 호출되지 않습니다.
                         
                         그런데, RUST는 스택뿐만 아니라 힙에 할당되어 있는 값(value)도 그 값에 대해 소유권이 있는 변수가 스코프(Scope)를 나가면 할당이 해제됩니다. 값이 할당이 해제되지 않으면서 자신의 Scope밖으로 나갈 수 있는 방법은 단 두가지가 있는데, return을 통해 소유권을 외부로 넘기거나, 외부에서 reference된 객체가 내부에서 만들어진 객체의 소유권을 가져가는 방법 뿐입니다.
                         
                         값을 Scope 안쪽으로 집어넣을 수도 있는데, 함수 인자를 통해 소유권을 함수로 넘기면 함수가 끝나는 시점에 값의 할당 해제를 발생시킬 수도 있습니다. 이때, 변수가 생성되고 소멸되기까지의 범위를 수명이라고 하고, 컴파일 타임에 레퍼런스의 수명을 값의 수명과 모두 비교하여 레퍼런스의 범위가 값의 범위를 절대 넘어서 살아남지 못하게 하는 방식으로 dangling 포인터를 방지합니다.

                         RUST는 이렇게 소유권과 수명을 컴파일 타임에 추적할 수 있도록 설계되었으며, 스택 영역에 할당되는 객체와 변수의 생성과 소멸 시기를 컴파일 타임에 모두 결정합니다. 참조자는 수명을 자동적으로 결정할 수 없는 경우도 있는데, 메소드나 함수의 (매개) 변수에 수명을 명시해주어야 합니다. 이 부분이 기존 프로그래머들에게는 매우 생소하여 많은 프로그래머들이 컴파일 에러를 겪었던 원인 중 하나이죠, 이러한 개념을 스마트 포인터와 혼동하는 경우가 있는데, 스마트 포인터는 힙 영역에 할당되는 객체를 자동적으로 관리하기 위한 것으로 객체의 수명이 런타임에 결정되므로, 위 개념과 스마트 포인터는 역할이 엄연히 다릅니다.

                         한편, 이와 같은 소유권의 특성으로 인해, a = b와 같은 연산은 기본적으로 복사 연산이 아닌 이동 연산입니다. b가 가지는 데이터의 소유권을 a로 이전하게 되며, b로는 데이터에 접근할 수 없게 됩니다. 다만, 단순 메모리 복사만 해도 되는 타입 (즉, memcpy로 복사해도 되는 타입)에는 #[derive(Copy)]와 같은 마커로 Copy Trait라는 복사 특성을 객체에 부여할 수 있습니다. 그러면, a = b과 같은 연산이 이동 연산 대신 복사 연산을 수행하도록 할 수 있습니다. std::vec::Vec과 같이 값을 단순히 복사하는 것으로 객체를 복제할 수 없는 경우 기본적으로 이동 연산을 그대로 사용하게 됩니다.

                         함수에 넘겨진 인자는 함수가 기본적으로 소유권을 가지게 됩니다. 함수가 반환하는 변수는 함수 외부 스코프(Scope)로 소유권을 넘겨준다. 만약 소유권을 넘겨주지 못한 채로 함수나 해당 스코프가 종료되면, 거기에 묶여 있던 변수도 수명이 끝나게 됩니다.
                         
                         
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("소유권과 수명")
        }
    }
}

struct RustPracticeCodeView: View {
  #if os(macOS)
    @AppStorage("fontsize") var fontSize = Int(NSFont.systemFontSize)
  #endif
  @State private var source = """
                                // 이 코드는 에러를 발생시킵니다.
                                fn main() {
                                    let a = 1;
                                    println!(a)
                                }
                                
                                // RUST 컴파일러는 친절하게 에러 해결 방법을 제안합니다.
                                // help: you might be missing a string literal to format with
                                // println!("{}", a)
                                
                                fn main() {
                                    let a = 1;
                                    println!("{}", a)
                                }
                                // 1
                                """
    @State private var language = CodeEditor.Language.rust
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
          .navigationTitle("예시코드")
      }
  }
}

struct WhereToRustView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         RUST는 수많은 플랫폼에서 작성되고 활용되고 있습니다.
                         
                         데스크탑과 스마트폰 OS의 시스템 라이브러리, 고성능 웹 백엔드, 블록체인(Solana, Polkadot), 임베디드 프로그래밍 등 다양한 분야에서 활약하고 있습니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("RUST의 특징")
        }
    }
}

struct GoodAndLustView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         RUST의 장점
                         
                         1. 안전한 메모리 관리
                         2. 철저한 에러 관리
                         3. 편리한 열거형
                         4. 안전하고 강력한 컴파일러
                         5. 용이한 패키지 관리 도구
                         
                         RUST의 단점
                         
                         1. 높은 진입 장벽
                         2. 타언어 대비 비교적 낮은 개발 속도
                         3. 공식 문서가 있지만, RUST 검색시 동명의 게임 등장
                         
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("장점과 단점")
        }
    }
}

struct RustView_Previews: PreviewProvider {
    static var previews: some View {
        RustView()
//        RustHelloView()
//        RustPracticeCodeView()
        
    }
}
