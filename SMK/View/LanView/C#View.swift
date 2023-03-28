//
//  C#View.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI
import CodeEditor

struct C_View: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Hello World!") {
                    CSharpHello()
                }
                NavigationLink("C#이란") {
                    AboutCsharp()
                }
                NavigationLink("C++과 차이점") {
                    DiffCsharp()
                }
                NavigationLink(".NET Core") {
                    DotNetView()
                }
                NavigationLink("C#은 어디에 사용되나요?") {
                    UseCsharp()
                }
            }
            .navigationTitle("C#")
        }
    }
}

struct CSharpHello: View {
  #if os(macOS)
    @AppStorage("fontsize") var fontSize = Int(NSFont.systemFontSize)
  #endif
  @State private var source = """
                                // C# 10.0
                                Console.WriteLine("Hello, world!");
                                """
    @State private var language = CodeEditor.Language.cs
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

struct AboutCsharp: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         C#은 마이크로소프트에서 개발한 프로그래밍 언어입니다.
                         마이크로소프트 닷넷 프로그램이 동작하는 닷넷 플랫폼을 가장 직접적으로 반영하고, 닷넷 플랫폼에 강하게 의존합니다.
                         
                         C#은 그 문법적인 특성이 Java와 상당히 유사하며 C#을 통하여 다룰 수 있는 닷넷 플랫폼의 기술들조차도 Java를 염두해 둔 것이 많아서
                         자바와 가장 많이 비교되고 있습니다. 하지만 C#은 Java와 달리 불완전 코드(unsafe code)와 같은 기술을 통하여 플랫폼 간 상호 운용성에 상당히 많은 노력을 기울이고 있습니다.
                         
                         C#의 기본 자료형은 닷넷의 객체 모델을 따르고 있고, 런타임 차원에서 가비지 컬렉터가 실행되며 또한 클래스, 인터페이스, 예외와 같이
                         객체 지향 언어로서 가져야 할 모든 요소들이 포함되어 있습니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("C#이란")
        }
    }
}

struct DiffCsharp: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         C++과 비교하여 C#은 다음과 같은 점에서 단순화 되거나 확장되었습니다.
                         
                         1. C#에는 전역변수 및 전역 함수가 존재하지 않으며, 클래스 안에 선언되어야 합니다.
                         
                         2. C#의 bool은 오직 true와 false의 논리값만 가질 수 있으며 상수 또는 정수형 변수에서 암시적으로 변환이 불가능하다. 직접 대입을 위해서는 변환 명령을 이용해야 합니다. 반면 C++의 bool은 정수값을 대입할 수 있습니다. 또한 C#에서는 if나 while문 등의 비교문에서 이용하는 값도 bool 형태로 제한되는 반면, C++에서는 상수 또는 변수를 이용하여 '0이 아닌 값' 또는 '0'의 여부로 비교할 수 있습니다.
                         
                         3. C#에서는 static 키워드를 오직 한 번만 초기화를 수행한다는 의미로 이용할 수 없습니다.
                         
                         4. 기본적으로 C#에서 포인터는 unsafe 블록 또는 unsafe 형식에서 사용하도록 정의되어 있으며, unsafe 키워드를 사용하려면 컴파일러에게 /unsafe 또는 --unsafe 스위치를 지정하도록 명시해야 합니다.
                         
                         5. 닷넷 플랫폼에서 포인터를 다루는 기본 단위는 System.IntPtr입니다.
                         
                         6. C#은 unsafe 블록 안에서 사용이 가능한 직접적인 포인터
                         (IntPtr.ToPointer 메서드로 void* 형식을 가져올 수 있음)도 지원합니다.
                         
                         7. 메모리 관리자에 의해 관리되는 데이터는 주소값이 자주 변경되므로, 잘못된 주소를 접근하는 등의 오류를 방지하기 위해 포인터는 참조 형식의 인스턴스를 가리킬 수 없는 것이 기본 원칙이며, 참조 형식의 필드를 멤버로 가지고 있는 구조체 역시 완전한 값 형식으로 판정하지 않고 참조 형식으로 처리하기 때문에, 이 경우의 구조체의 인스턴스에 대해서도 포인터로 그 주소를 가리킬 수 없습니다.
                         
                         8. C#의 포인터는 C++의 포인터와 비교하였을 때 문법적으로 다른 의미를 가집니다.
                         C++에서 포인터는 특정한 형식의 인스턴스 또는 주소값을 가리키기 위한 목적으로 할당되는 주소값을 기억하기 위한 변수로 취급되지만 C#의 포인터는 System.IntPtr이라는 하나의 완성된 형식에 대한 확장 사양일 뿐이죠. 그래서 C++의 포인터와 같은 쓰임새를 C#으로 이식할 수 없는 경우가 상당히 많습니다.
                         
                         9. void* 포인터가 가리키는 값을 얻어낼 수 없고 void* 포인터에 대한 산술 연산도 수행할 수 없다.
                         
                         10. 산술 연산은 컴파일러의 옵션 지정에 따라서 /checked+ 로 지정된 경우
                         모든 코드 범위에서 엄격한 산술 연산 검사를 할 수 있으며 /checked- 로 지정된 경우 모든 코드 범위에서 산술 연산 검사를 하지 않도록 할 수 있다. 컴파일러 옵션과는 관계없이 unchecked 블록 안에서는 검사되지 않으며, 반대로 checked 블록 안에서는 검사가 이루어진다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("C++과의 차이점")
        }
    }
}

struct DotNetView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         마이크로소프트가 C#, VB.NET 등 모든 닷넷 프레임워크 기반 언어를 Windows, macOS, Linux 기반에서 돌아가도록 만든
                         오픈 소스 프레임워크입니다. 모노와 .NET Core 프레임워크 모두 오픈소스 기반이나, 모노의 경우 GTK#이라는 다중 플랫폼 GUI를 지원하지만
                         .NET Core의 경우는 2.x 버전까지 오로지 콘솔 프로그램 개발만 지원했다. 버전3 부터는 MS 윈도우 시스템하에서 WPF와 WinForms를 지원합니다.
                         
                         현재 .NET Core 2.0으로 GUI를 구현할 수 있는 오픈소스 프레임워크인 "Avalonia"가 있습니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle(".NET Core")
        }
    }
}

struct UseCsharp: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         C#은 GUI, ASP .NET의 웹 개발 그리고 게임 개발에 사용되어집니다.
                         
                         게임 클라이언트 및 서버 개발에 사용되며 Uinty 엔진의 개발 언어이기도 합니다.
                         (런타임 C++, 스크립팅 C#)
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("C#은 어디에 사용되나요?")
        }
    }
}

struct C_View_Previews: PreviewProvider {
    static var previews: some View {
        C_View()
//        CSharpHello()
    }
}
