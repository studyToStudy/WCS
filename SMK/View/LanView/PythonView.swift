//
//  PythonView.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI
import CodeEditor

struct PythonView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Hello World!") {
                    PythonHello()
                }
                NavigationLink("Python이란") {
                    AboutPythonView()
                }
                NavigationLink("Python의 철학") {
                    FuntionPythonView()
                }
                NavigationLink("권장 코드 스타일") {
                    WritePythonView()
                }
                NavigationLink("장점과 단점") {
                    GoodAndLustsView()
                }
                NavigationLink("수학관련 라이브러리") {
                    MathPython()
                }
                NavigationLink("머신러닝 라이브러리") {
                    MachinePython()
                }
                NavigationLink("ChatGPT 사용하기") {
                    ChatGPTPython()
                }
            }
            .navigationTitle("Python이란")
        }
    }
}

struct PythonHello: View {
  #if os(macOS)
    @AppStorage("fontsize") var fontSize = Int(NSFont.systemFontSize)
  #endif
  @State private var source = """
                                print("Hello World!")
                                """
    @State private var language = CodeEditor.Language.python
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

struct AboutPythonView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         "Life is short, You need Python"
                         
                         파이썬은 귀도 반 로섬이 만든, 1991년 발표된 인터프리터 방식의 프로그래밍 언어입니다. 파이썬의 강력한 라이브러리와 풍부한 생테계를 통해,
                         데이터를 수집하고 분석하며 시각화할 수 있습니다. 데이터 분석 분야에서 파이썬의 사용이 널리 퍼진 이유 중 하나는, 다른 프로그래밍 언어에 비해
                         비교적 쉽고 간편하게 사용할 수 있기 때문입니다. 파이썬은 웹 프레임워크와 같은 라이브러리와 함께 사용될 경우, 데이터를 수집하고 처리한 결과를
                         웹 애플리케이션으로 표시할 수 있습니다.
                         
                         인공지능, 머신러닝, 딥러닝 등과 같은 분야에도 파이썬을 적용하고 사용하고 있습니다.
                         또한 다른 언어와의 호환성이 뛰어나기 때문에, 다른 프로그래밍 언어와의 통합이 용이합니다. 예를 들어 파이썬과 R을 함께 사용하여 데이터 분석 작업을 수행할 수 있습니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("Python이란")
        }
    }
}

struct FuntionPythonView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         파이썬은 다양한 프로그래밍 패러다임을 지원하는 언어입니다. 객체 지향 프로그래밍과 구조적 프로그래밍을 완벽하게 지원하며 함수형 프로그래밍, 관점 지향 프로그래밍 등도 주요 기능에서 지원합니다.
                         
                         파이썬의 핵심 철학은 아래와 같습니다.
                         
                         1.아름다운 것이 추한 것보다 낫다. (Beautiful is better than ugly.)
                         
                         2.명시적인 것이 암시적인 것보다 낫다. (Explicit is better than implicit.)
                         
                         3.간결한 것이 복합적인 것보다 낫다. (Simple is better than complex.)
                         
                         4.복합적인 것이 복잡한 것보다 낫다. (Complex is better than complicated.)
                         
                         5.수평적인 것이 내포된 것보다 낫다. (Flat is better than nested.)
                         
                         6.여유로운 것이 밀집한 것보다 낫다. (Sparse is better than dense.)
                         
                         7.가독성은 중요하다. (Readability counts.)
                         
                         8.특별한 경우들은 규칙을 어길 정도로 특별하지 않다. (Special cases aren't special enough to break the rules.)
                         
                         9.허나 실용성은 순수성을 이긴다. (Although practicality beats purity.)
                         
                         10.오류는 절대로 조용히 지나가지 않는다. (Errors should never pass silently.)
                         
                         11.명시적으로 오류를 감추려는 의도가 아니라면. (Unless explicitly silenced.)
                         
                         12.모호함을 대할 때, 이를 추측하려는 유혹을 거부하라. (In the face of ambiguity, refuse the temptation to guess.)
                         
                         13.명확한, 그리고 가급적이면 유일한 하나의 방법은 항상 존재한다. (There should be one-- and preferably only one --obvious way to do it.)
                         
                         14.비록 그 방법이 처음에는 명확해 보이지 않을지라도. (Although that way may not be obvious at first unless you're Dutch.)
                         
                         15.지금 행동에 옮기는 것이 아예 안 하는 것보다는 낫다. (Now is better than never.)
                         
                         16.비록 아예 안 하는 것이 지금 *당장* 하는 것보다 나을 때도 많지만. (Although never is often better than *right* now.)
                         
                         17.구현 결과를 설명하기 쉽지 않다면, 그것은 나쁜 아이디어이다. (If the implementation is hard to explain, it's a bad idea.)
                         
                         18.구현 결과를 설명하기 쉽다면, 그것은 좋은 아이디어일지도 모른다. (If the implementation is easy to explain, it may be a good idea.)
                         
                         19.네임스페이스를 사용하는 것은 완전 좋은 생각이다! (Namespaces are one honking great idea -- let's do more of those!)
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("Python의 철학")
        }
    }
}

struct WritePythonView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         특유의 철학으로 문법이 엄격합니다. 가독성을 위해 스타일 가이드까지 있을 정도입니다.
                         
                         1. 블록처리 규칙
                         다른 언어에서는 중괄호를 블록 단위로 사용하지만, 파이썬에서는 중괄호 대신 들여쓰기를 사용합니다.
                         
                         2. 네이밍 규칙
                         2-1 일반적으로 Snake Case를 쓰되, 특정한 종류에는 Pascal Case를 사용합니다.
                         2-2 변수는 소문자로 시작하며, 내부변수는 맨 앞에 밑줄 1개로 시작하며, 숨은변수는 밑줄 2개로 시작합니다.
                         
                         3. 문법 규칙
                         3-1 한 줄은 79글자로 제한하기
                         3-2 import는 파일의 맨 위에 적고 내장 모듈, 제 3자 모듈, 직접 만든 모듈 순서로 불러들입니다.
                         3-3 할당 연산자(=)의 앞뒤로 공백 넣기
                         
                         작성한 코드가 PEP8 스타일 가이드를 지키고 있는지 확인하는 Pylint와 Flake8의 패키지가 있습니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("권장 코드 스타일")
        }
    }
}

struct GoodAndLustsView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         장점
                         1. 신속한 개발 속도
                         2. 용이한 피드백
                         3. 과학 및 공학 친화성
                         4. 거대한 생태계
                         5. 교육의 편의성
                         
                         단점
                         1. 비교적 저속의 실행속도
                         2. 배포 과정의 복잡함
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

struct MathPython: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         파이썬 라이브러리중 범용성을 지닌 수학 관련 라이브러리입니다.
                         
                         1. 넘파이(NumPy) : 통계, 선형 대수, 행렬 계산, 금융 운용 등을 포함한 과학 계산과 수학 작업, 수치 해석, 특히 선형 대수(linear algebra) 계산 기능을 제공하며 자료형이 고정된 다차원 배열 클래스(n-dimensional array)와 벡터화 연산(vectorized operation)을 지원합니다. 참고로 Numpy는 C언어로 제작되어, Python보다 빠른 속도를 제공합니다. 꼭 수치 해석/선형대수 목적이 아니더라도 배열 형태의 데이터에 대한 처리 속도를 간단하게 높이는 용도로 사용할 수 있습니다.
                         
                         2. 싸이파이(SciPy) : 고성능 선형대수, 함수 최적화, 신호 처리, 특수한 수학 함수와 통계 분포 등 과학 계산용 함수를 모아놓은 Python 패키지입니다. 고급 수학 함수, 수치적 미적분, 미분 방정식 계산, 최적화, 신호 처리 등을 위한 다양한 과학 기술 계산 기능이 제공됩니다.
                         
                         3. 심파이(SymPy) : 수치적인 계산이 아니라 기호(symbol)을 이용하는 대수적 연산에 사용되는 라이브러리입니다. 인수 분해, 미분, 적분 등 다양한 기능을 제공하며, 단순한 계산이 아니라 수식을 직접 다뤄야 하는 경우 사용하기 편리합니다. (ex. 특정 수식의 미분 결과를 알고 싶은 경우)

                         4. einops: 물리에서 많이 쓰이는 einstein summation convention을 사용해 다차원 배열을 조작하는 함수를 제공합니다. numpy의 einsum 함수와 비슷하나, reduce와 rearrange 계열 조작에 특화된 패키지입니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("수학관련 라이브러리")
        }
    }
}

struct MachinePython: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Text("""
                         1. 사이킷런(scikit-learn): Python의 머신 러닝 라이브러리입니다. 딥러닝보다는 데이터 전처리 및 classical machine learning 알고리즘 (SVM, decision tree 알고리즘 등)을 매우 편리하고 일관성 있는 API로 이용할 수 있습니다.
                         
                         2. TensorFlow: 구글에서 오픈 소스로 공개한 기계 학습, 인공 신경망 라이브러리입니다.
                         
                         3. 파이토치(PyTorch): 토치 기반의 기계 학습 라이브러리입니다. 간결하고 구현과 성능이 빠르며 pythonic 한 코드 작성이 가능합니다.
                         
                         4. 케라스(Keras): TensorFlow, Theano, CNTK 등 딥 러닝 라이브러리를 백엔드로 사용할 수 있어 쉽게 다층 퍼셉트론 신경망 모델, 컨볼루션 신경망 모델, 순환 신경망 모델, 조합 모델 등을 구성할 수 있습니다. TensorFlow 등 다른 라이브러리에 비해 쉬운 문법이 특징입니다. 현재는 TensorFlow2와
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
//                    .offset(y: -150)
                }
            }
            .navigationTitle("머신러닝 라이브러리")
        }
    }
}

struct ChatGPTPython: View {
  #if os(macOS)
    @AppStorage("fontsize") var fontSize = Int(NSFont.systemFontSize)
  #endif
  @State private var source = """
                                import os
                                import openai
                                openai.api_key = os.getenv("OPENAI_API_KEY")

                                completion = openai.ChatCompletion.create(
                                  model="gpt-3.5-turbo",
                                  messages=[
                                    {"role": "user", "content": "Hello!"}
                                  ]
                                )

                                print(completion.choices[0].message)
                                
                                // openAI doc의 API 레퍼런스에서 제공되는 파이썬 샘플 코드입니다.
                                """
    @State private var language = CodeEditor.Language.python
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



struct PythonView_Previews: PreviewProvider {
    static var previews: some View {
        PythonView()
    }
}
