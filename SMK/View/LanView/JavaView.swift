//
//  JavaView.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI
import CodeEditor

struct JavaView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Hello World!") {
                    JavaHello()
                }
                NavigationLink("Java란") {
                    JavaExplainView()
                }
                NavigationLink("Java의 핵심 목표") {
                    JavaDetailView()
                }
                NavigationLink("Java Spring") {
                    JavaSpringView()
                }
                NavigationLink("Java Spring의 특징") {
                    JavaSpringDetailView()
                }
                NavigationLink("JSP란") {
                    JavaServerPageView()
                }
            }
            .navigationTitle("Java")
        }
    }
}

struct JavaHello: View {
  #if os(macOS)
    @AppStorage("fontsize") var fontSize = Int(NSFont.systemFontSize)
  #endif
  @State private var source = """
                                public class HelloWorldApp {
                                 public static void main(String[] args) {
                                        System.out.println("Hello World!");
                                    }
                                }
                                """
    @State private var language = CodeEditor.Language.java
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

struct JavaExplainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         "Write Once, Run AnyWhere"
                         
                         자바는 썬 마이크로시스템즈의 제임스 고슬링과 연구원들이 개발한 객체 지향 프로그래밍 언어입니다.
                         처음에는 가전제품 내 탑재되어 동작하는 프로그램을 위해 개발되었지만, 현제는 웹 애플리케이션 분야에
                         가장 많이 사용되는 언어 중 하나이고, 안드로이드를 비롯한 모바일 소프트웨어 개발에도 널리 사용되고 있습니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("Java란")
        }
    }
}

struct JavaDetailView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         1. 객체 지향 방법론을 사용한다.
                         2. 같은 프로그램이 여러 운영 체제에서 실행될 수 있어야 한다.
                         3. 컴퓨터 네트워크 접근 기능이 탑재되어 있어야 한다.
                         4. 원격 코드를 안전하게 실행할 수 있어야 한다.
                         5. 다른 객체 지향 언어들의 좋은 부분을 흡수한다.
                         
                         자바는 초기 설계부터 객체 지향 언어로 설계되었습니다. C가 C++로 진화한 것과는 차이가 있죠.
                         그리고 같은 코드로 어떤 마이크로프로세서에서나 실행되기를 바랬습니다. 따라서 자바는 자바만의 실행코드인
                         바이트코드라는 중간 코드를 컴파일러에 의해 생성합니다. 그리고 자바 가상 머신(JVM)에 의해 해석되어 실행됩니다.
                         따라서 C/C++ 코드로 작성되어 생성된 코드보다 실행속도가 느립니다. 그러나 같은 코드로 다양한 플랫폼에서 실행되는 것은
                         큰 장점입니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("Java의 핵심 목표")
        }
    }
}

struct JavaSpringView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         스프링 프레임워크, 자바 플랫폼을 위한 오픈 소스 애플리케이션 프레임워크로서 스프링이라고도 합니다.
                         동적인 웹 사이트를 개발하기 위한 여러가지 서비스를 제공하고 있습니다. 대한민국 공공기관의 웹 서비스 개발 시
                         사용을 권장하고 있는 전자정부 표준프레임워크의 기반 기술로서 쓰이고 있습니다.
                         
                         로드 존슨이 2002년 출판한 저서 "Expert One-on-One J2EE Design and Development"에 선보인
                         코드를 기반으로 시작하여 점점 발전하였습니다. 2003년 최초로 아파치 2.0 라이선스로 공개되었습니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("Java란")
        }
    }
}

struct JavaSpringDetailView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         스프링은 다른 프레임워크에 비해 다음 특징을 지닙니다.
                         
                         1. 경량 컨테이너로서 자바 객체를 직접 관리합니다, 객체 생성, 소멸과 같은 라이프 사이클을 관리하며 스프링으로 부터 필요한 객체를 얻어올 수 있습니다.
                         
                         2. 스프링은 Plain Old Java Object 방식의 프레임워크입니다. 일반적인 J2EE 프레임워크에 비해 구현을 위해 특정한 인터페이스를 구현하거나 상속을 받을 필요가 없어 기존에 존재하는 라이브러리 등을 지원하기에 용이하고 객체가 가볍습니다.
                         
                         3. 제어반전(ioC: Inversion of Control): 컨트롤의 제어권이 사용자가 아니라 프레임워크에 있어, 필요에 따라 스프링에서 사용자의 코드를 호출합니다.
                         
                         4. 의존성 주입(DI: Dependency Injection): 각각의 계층이나 서비스들 간의 의존성이 존재할 경우 프레임워크가 서로 연결시켜줍니다.
                         
                         5. 관점 지향 프로그래밍(AOP): 트랜잭션이나 로깅, 보안과 같이 여러 모듈에서 공통적으로 사용하는 기능의 경우 해당 기능을 분리하여 관리할 수 있습니다.
                         
                         6. 영속성과 관련된 다양한 서비스를 지원합니다. iBATIS나 하이버네이트 등 완성도가 높은 데이터베이스 라이브러리와 연결할 수 있는 인터페이스를 제공합니다.
                         
                         7. 높은 확장성, 스프링 프레임워크에 통합하기 위해 간단하게 기존 라이브러리를 감싸는 정도로 스프링에서 사용이 가능합니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("Java란")
        }
    }
}

struct JavaServerPageView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         자바를 이용한 서버 사이드 템플릿 엔진입니다. JSP는 자바를 웹 서버에서 쉽게 사용하기 위한 기술이며 언어는 아닙니다.
                         Java Server Pages의 약자이며 현재는 Jakarta Server Pages로 불립니다.
                         
                         JSP는 주로 대규모 기업용 시스템 구축에 사용됩니다. Java Enterprise Edition(J2EE)의 사양을 만족하는 웹 애플리케이션 서버 위에서
                         프로그램을 운용하며, J2EE는 JSP의 실행 뿐 아니라 DB 커넥션 풀, 메시징 시스템, 로드 밸런싱 등 다양한 기능이 있습니다.
                         이로 인해 규모가 방대하고 무거우며, 메모리 등의 자원도 많이 사용하게 되어 상대적으로 초기 로딩이 느립니다.
                         
                         JSP를 지원하는 IDE로는 이클립스, 넷빈즈, 인텔리제이 등이 있으며 VSCode와 같은 텍스트 에디터도 JSP를 지원합니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("JSP")
        }
    }
}

struct JavaView_Previews: PreviewProvider {
    static var previews: some View {
        JavaView()
    }
}
