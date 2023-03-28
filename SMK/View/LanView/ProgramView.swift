//
//  ProgramView.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI

struct ProgramView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("변수와 상수") {
                    VariableView()
                }
                NavigationLink("자료형") {
                    DataTypeView()
                }
                NavigationLink("객체지향 프로그래밍") {
                    OopView()
                }
                NavigationLink("API란") {
                    ApiView()
                }
                NavigationLink("RESTful API란") {
                    RestFulApiView()
                }
            }
            .navigationTitle("프로그래밍 공통")
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
                            변수에서 변(變)은 변할 변으로 변하다라는 의미를 가지고 있습니다.
                            영어로는 variable로 변하기 쉽다라는 뜻입니다.
                            
                            반면에 상수는, 항상 같은 수, 변하지 않는 수를 뜻합니다.
                            영어로는 constant로 변함없는이라는 뜻입니다.
                            
                            프로그래밍 언어마다 각기 다른 키워드로 변수 혹은 상수를 선언할 수 있습니다.
                            
                            - 키워드: var, let, const 등
                            """)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(1)
                        .padding()
                    }
                }
            }
            .navigationTitle("변수와 상수")
        }
    }
}

struct OopView : View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack {
                        Text("""
                            프로그램 설계방법론이자 개념의 일종입니다.
                            프로그램을 단순히 데이터와 처리 방법으로 나누는 것이 아니라, 프로그램을 수많은 객체(Object)라는 기본 단위로 나누고 이들의 상호작용으로 서술하는 방식입니다.
                            
                            객체란 하나의 역할을 수행하는 '메소드와 데이터'의 묶음으로 봐야합니다.
                            큰 문제를 작게 쪼개는 것이 아니라, 작은 문제들을 해결할 수 있는 객체들을 만든 뒤, 이 객체들을 조합하여 큰 문제를 해결하는
                            상향식(Bottom-Up) 해결법입니다. 객체란 독립성/신뢰성을 높게 만들어둔다면 그 이후엔 수정없이 재사용할 수 있으므로 개발기간과 비용이 크게 감소합니다.
                            """)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(1)
                        .padding()
                    }
                }
            }
            .navigationTitle("변수와 상수")
        }
    }
}

struct OopViewDetailView : View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack {
                        Text("""
                            1. 캡슐화
                            변수와 함수를 하나의 단위로 묶어 번들링(bundling)합니다. 대게 이 번들링은 class를 통해 구현되고,
                            해당 클래스의 인스턴스 생성을 통해 클래스 안에 포함된 멤버 변수와 메소드에 쉽게 접근이 가능합니다.
                            
                            2. 은닉화
                            프로그램의 세부 구현을 외부로 드러나지 않도록 특정 모듈 내부로 감추는 것입니다. 내부의 구현은 감추고 모듈 내에서의 응집도를 높이며,
                            외부로의 노출은 최소화하여 모듈간의 결합도를 떨어뜨려 유연함과 유지보수성을 높힙니다.
                            클래스 외부에서는 바깥으로 노출된 특정 메소드에만 접근이 가능하며 클래스 내부에서 어떤 방법으로 처리되는지 알지 못하도록 설계됩니다.
                            - 키워드: public, protected, private
                            
                            3. 상속
                            상속은 자식 클래스가 부모 클래스의 특성과 기능을 그대로 물려받는 것을 말합니다. 기능의 일부분을 변경해야 할 경우
                            자식 클래스에서 상속받은 기능만을 수정해서 다시 정의하게 되는데 이를 '오버라이딩(overriding)'이라고 합니다.
                            상속은 캡슐화를 유지하면서도 클래스의 재사용이 용이하도록 해줍니다.
                            """)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(1)
                        .padding()
                    }
                }
            }
            .navigationTitle("객체지향 프로그래밍의 특징")
        }
    }
}

struct ApiView : View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack {
                        Text("""
                            API(application programming interface)는 컴퓨터나 컴퓨터 프로그램 사이의 연결을 말합니다.
                            일종의 소프트웨어 인터페이스이며 다른 종류의 소프트웨어에 서비스를 제공합니다.
                            이러한 연결이나 인터페이스를 빌드하거나 사용하는 방법을 기술하는 문서나 표준은 API 사양으로 부릅니다.
                            
                            컴퓨터와 사람을 연결시키는 사용자 인터페이스와 반대로, 소프트웨어에 이를 통합하고자 하는 컴퓨터 프로그래머가 사용하도록 고안되었습니다. API는 각기 다른 부분으로 구성되기도 하며 프로그래머가 사용할 수 있는 도구나 서비스의 역할을 합니다.
                            
                            API는 특정 시스템용으로 커스텀하여 빌드할 수도 있고, 수많은 시스템 간 상호운용성을 허용하는, 공유가되는 표준일 수도 있습니다.
                            """)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(1)
                        .padding()
                    }
                }
            }
            .navigationTitle("API란")
        }
    }
}

struct RestFulApiView : View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack {
                        Text("""
                            REST(Represntaional State Transfer)의 약자로 자원을 이름으로 구분하여 해당 자원의 상태를 주고받는 모든 것을 의미합니다.
                            HTTP URI를 통해 Resource를 명시하고, HTTP Method(POST, GET, PUT, DELETE, PATCH)를 통해, 해당 자원에 대한 CRUD를 적용하는 것이죠
                            
                            CRUD는 Create, Read, Update, Delete를 의미하고 크게 데이터의 생성, 조회, 수정, 삭제의 역할을 합니다.
                            
                            RESTful API는 두 컴퓨터 시스템이 인터넷을 통해 정보를 안전하게 교환하기 위해 사용하는 인터페이스입니다. 대부분의 비즈니스 애플리케이션은 다양한 태스크를 수행하기 위해 다른 내부 애플리케이션 및 서드 파티 애플리케이션과 통신해야 합니다. 예를 들어 월간 급여 명세서를 생성하려면 인보이스 발행을 자동화하고 내부의 근무 시간 기록 애플리케이션과 통신하기 위해 내부 계정 시스템이 데이터를 고객의 뱅킹 시스템과 공유해야 합니다. RESTful API는 안전하고 신뢰할 수 있으며 효율적인 소프트웨어 통신 표준을 따르므로 이러한 정보 교환을 지원합니다.
                            """)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(1)
                        .padding()
                    }
                }
            }
            .navigationTitle("RESTful API란")
        }
    }
}
        
        struct ProgramView_Previews: PreviewProvider {
            static var previews: some View {
                RestFulApiView()
            }
        }
