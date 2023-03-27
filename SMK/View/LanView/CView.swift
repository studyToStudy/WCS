//
//  CView.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI

struct CView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("C언어란") {
                    AboutC()
                }
                NavigationLink("C언어의 특징") {
                    AboutCView()
                }
                NavigationLink("자료형") {
                    CdataStructure()
                }
                NavigationLink("변수") {
                    VariableView()
                }
                NavigationLink("상수") {
                    ConstantView()
                }
            }
            .navigationTitle("C")
        }
    }
}


struct AboutC: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("""
                     C언어는 1972년 데니스 리치와 켄 톰슨이 만든 프로그래밍 언어로서, 세계적으로 많이 쓰이는 프로그래밍 언어 중 하나입니다.
                     
                     C는 UNIX 운영체제의 개발을 위해 탄생되었으며, 현재까지도 운영체제 또는 운영체제 기반의 응용 프로그램을 개발할때 사용되는 효율성이 높은 프로그래밍 언어이며, 임베디드시스템 소프트웨어 분야, 모바일 분야, 자율 컴퓨팅 분야에도 널리 사용되고 있습니다.
                     """)
                .padding()
                .offset(y: -200)
            }
            .navigationTitle("C언어란")
        }
    }
}

struct CdataStructure: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack {
                        Image("c-char")
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .frame(width: 380, height: 380)
                        Image("c-char2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 380, height: 380)
                    }
                    Text("""
                         char는 정수와 문자를 표시할 때 사용되고,
                         short, int, long, long long은 정수, 즉 숫자를 나타낼 때 사용됩니다.
                         각각의 차이점은 "조금 더 크거나 조금 더 작은 숫자를 표시할 수 있다"입니다.
                         
                         정수형의 경우 signed(부호 있는 변수), unsigned(부호 없는 변수)로 나뉘어 지는데 signed의 경우에는
                         음수와 양수 둘 다 표현이 가능하고, unsigned의 경우 양수만을 표현할 수 있는 대신 범위가 약 2배 정도 넓습니다.
                         
                         실수형은 float, double, long double 순으로 조금 더 큰 숫자, 많은 소수점을 나타낼 수 있으며,
                         정수형과 달리 unsigned이 존재하지 않습니다.
                         """)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(1)
                    .padding()
                    .offset(y: -150)
                }
            }
            .navigationTitle("자료형")
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

struct VariableView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack {
                        Text("""
                            C언어에서는 변수의 이름을 비교적 자유롭게 지을 수 있습니다.
                            하지만 변수의 이름은 해당 변수에 저장될 데이터의 의미를 가장 잘 나타내는 것이 좋습니다.
                            
                            변수를 생성할때 지켜야 하는 규칙은 다음과 같습니다.
                            
                            1. 변수의 이름은 영문자(대소문자), 숫자, 언더스코어(_)로만 구성됩니다.
                            2. 변수의 이름 사이에는 공백을 포함할 수 없습니다.
                            3. 변수의 이름으로 C언어에서 미리 정의된 키워드(예약어)는 사용할 수 없습니다.
                            
                            변수(Variable)란 데이터를 저장히기 위해 프로그램에 의해 이름을 할당받은 메모리 공간을 의미합니다.
                            즉, 변수란 데이터를 저장할 수 있는 메모리 공간이며, 이렇게 저장된 값은 변경할 수 있습니다.
                            
                            숫자와 관련된 변수는 정수형 변수와 실수형 변수로 구분되고, 정수형 변수는 char형, int형, long형 변수로, 실수형 변수는 float형, double형 변수로 나눌 수 있습니다.
                            
                            그라고 데이터가 저장된 메모리의 주소를 저장하고 처리하는 포인터 변수가 있습니다.
                            """)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(1)
                        .padding()
                    }
                }
            }
            .navigationTitle("변수")
        }
    }
}

struct ConstantView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack {
                        Text("""
                            상수(Constant)란 변수와 마찬가지로 데이터를 저장할 수 있는 메모리 공간을 의미합니다.
                            하지만 상수가 변수와 다른 점은 프로그램이 실행되는 동안 상수에 저장된 데이터는 변경할 수 없다는 점 입니다.
                            
                            상수는 표현 방식에 따라 다음과 같이 나눌 수 있습니다.
                            1. 리터럴 상수(literal constant)
                            2. 심볼릭 상수(symbolic constant)
                            """)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(1)
                        .padding()
                        
                        Text("리터럴 상수")
                            .bold()
                            .frame(alignment: .leading)
                            Text("""
                                 1. 정수형 리터럴 상수는 123, -456과 같이 아라비아 숫자와 부호로 직접 표현됩니다.
                                 2. 실수형 리터럴 상수는 3.14, -45.6과 같이 소수 부분을 가지는 아라비아 숫자로 표현됩니다.
                                 3. 문자형 리터럴 상수는 'a', 'Z'와 같이 따옴표('')로 감싸진 문자로 표현됩니다.
                                 """)
                    }
                }
            }
            .navigationTitle("상수")
        }
    }
}



struct CView_Previews: PreviewProvider {
    static var previews: some View {
        CView()
//        AboutC()
//        CdataStructure()
//        AboutCView()
//        VariableView()
//        ConstantView()
    }
}
