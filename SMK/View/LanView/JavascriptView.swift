//
//  JavascriptView.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI
import CodeEditor

struct JavascriptView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Hello World!"){
                    JSHelloView()
                }
                NavigationLink("JavaScript란"){
                    AboutJSView()
                }
                NavigationLink("프로토타입"){
                    ProtoTypeJSView()
                }
                NavigationLink("프레임워크 및 라이브러리"){
                    RibraryJSView()
                }
                NavigationLink("TypeScript와의 관계"){
                    TypeScriptView()
                }
            }
            .navigationTitle("JavaScript")
        }
    }
}

struct JSHelloView: View {
  #if os(macOS)
    @AppStorage("fontsize") var fontSize = Int(NSFont.systemFontSize)
  #endif
  @State private var source = """
                                document.write("Hello World!") // HTML 문서에 출력됩니다.
                                alert("Hello World!") // 브라우저에 알림창으로 출력됩니다.
                                console.log("Hello World!") // F12 검사창 콘솔에 출력됩니다.
                                """
    @State private var language = CodeEditor.Language.javascript
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

struct AboutJSView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         프로토타입 기반의 프로그래밍 언어로, 스크립트 언어에 해당됩니다. 거의 대부분의 웹 브라우저에 인터프리터가 내장되어 있습니다.
                         오늘날 HTML, CSS와 함께 웹을 구성하는 요소 중 하나입니다. HTML이 뼈대를 담당, CSS가 외관을 담당한다면, JavaScript는 클라이언트 단에서 웹 페이지가 동작하게하는 엔진을 담당합니다.
                         
                         JavaScript는 AJAX, jQuery 등의 등장으로 많은 발전을 이루었으며, NodeJS의 등장으롤 프론트엔드 뿐만 아니라 백엔드 및 네이티브 프로그래밍에서도 JavaScript가 쓰이고 있습니다.
                         
                         파일 확장자는 .js
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("JavaScript란")
        }
    }
}

struct ProtoTypeJSView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         C++, Java와 같은 클래스 기반 객체지향 프로그래밍 언어와 달리 자바스크립트는 프로토타입 기반 객체지향 프로그래밍 언어입니다.
                         
                         클래스 기반 객체지향 프로그래밍 언어는 객체 생성 이전에 클래스를 정의하고 이를 통해 객체(인스턴스)를 생성한다. 하지만 프로토타입 기반 객체지향 프로그래밍 언어는 클래스 없이(Class-less)도(ECMAScript6에서 클래스가 추가되었습니다.) 객체를 생성할 수 있습니다.
                         
                         자바스크립트의 모든 객체는 자신의 부모 역할을 담당하는 객체와 연결되어 있습니다. 그리고 이것은 마치 객체 지향의 상속 개념과 같이 부모 객체의 프로퍼티 또는 메소드를 상속받아 사용할 수 있게 해줍니다. 이러한 부모 객체를 Prototype(프로토타입) 객체 또는 줄여서 Prototype(프로토타입)이라고 부릅니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("프로토타입")
        }
    }
}

struct RibraryJSView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         1. jQuery
                         DOM Manipulating 라이브러리입니다.
                         사실상 JavaScript 개발에 필수였던 라이브러리였으나 리액트, 앵귤러 등의 프레임워크의 생산성이 워낙 높다 보니 사용성에 있어 의존도가 점차 낮아지고 있습니다.
                         
                         2. AngularJS
                         구글에서 제작한 프론트엔드용 클라이언트 사이드 JavaScript 프레임워크입니다. 백엔드, 프론트엔드를 동시에 작업 할 수 있습니다. MongoDB, Express, AngularJS, Node.js를 함께 사용하여 MEAN Stack으로 많이 사용합니다.
                         
                         3. React
                         구 Facebook 현 Meta에서 만든 프론트엔드용 오픈소스 라이브러리입니다. 단방향 데이터 흐름과, Virtual DOM 개념을 도입한 UI 컴포넌트 라이브러리. 생산성이 높고, DOM 업데이트에 있어서 성능이 매우 빨라 동적인 웹 애플리케이션 구성에 유리합니다. 그리고 이러한 동적 웹이 모던 웹 애플리케이션의 필수 요소가 되어버린만큼 출시 이후 꾸준히 점유율을 늘려가며 업계 표준 라이브러리 중 하나로 자리잡았다. React Hooks이라 불리는 메소드가 지원되면서 생산성이 더 향상되었습니다. html로 뷰를 작성해야하는 Angular와는 다르게 JSX라는 문법을 지원하면서 JavaScript만으로 애플리케이션을 제작하는게 가능합니다.
                         
                         4. VueJS
                         사용자 인터페이스를 만들기 위한 프론트엔드용 프레임워크입니다. 굉장히 자유롭고 유연하게 추가 기능들을 불러올 수 있다는 특징이 있습니다.
                         
                         5. Node.js
                         브라우저 안에서만 작동하던 JavaScript를 브라우저 외의 환경에서 작동할 수 있게 만들어 준 런타임 환경입니다.
                         npm, yarn, pnpm 등 다양한 패키지 관리자가 있습니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("프레임워크 및 라이브러리")
        }
    }
}

struct TypeScriptView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         마이크로소프트에서 발표한 JavaScript에 정적 타입 개념을 추가한 언어입니다. CoffeeScript와 마찬가지로 컴파일 결과는 JavaScriptdlqslek.
                         약타입 언어인 JavaScript 타입 시스템의 약점을 보완하였으며, 순수한 JavaScript와의 문법적인 차이가 적습니다.
                         Visual Studio Code에서 변수 타입이나 오류에 관한 피드백을 즉각 알려주어 버그 방지에 유용합니다.
                         
                         TypeScript(이하 TS)라는 이름답게 정적 타입을 명시할 수 있다는 것이 JavaScript와 큰 차이입니다. 개발자가 의도한 변수나 함수 등의 목적을
                         더욱 명확하게 전달할 수 있으며, 전달된 정보를 통해 코드 자동 완성 및 잘못된 변수/함수에 대한 에러 알림을 받을 수 있습니다.
                         
                         TS를 사용하기 위해서는 npm이 필요합니다. 파일확장자는 .ts
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("TypeScript")
        }
    }
}


struct JavascriptView_Previews: PreviewProvider {
    static var previews: some View {
        JavascriptView()
//            RibraryJSView()
    }
}
