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
                NavigationLink("객체지향 프로그래밍의 특징") {
                    OopViewDetailView()
                }
                NavigationLink("API란") {
                    ApiView()
                }
                NavigationLink("RESTful API란") {
                    RestFulApiView()
                }
                NavigationLink("Docker") {
                    DockerKub()
                }
                NavigationLink("Kubernetes") {
                    Kubernetes()
                }
                NavigationLink("함수형 프로그래밍") {
                    FunctionalProgramming()
                }
                NavigationLink("오버플로") {
                    OverFlow()
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
            .navigationTitle("객체지향 프로그래밍")
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

struct DockerKub : View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack {
                        Text("""
                            Docker(도커)
                            
                            도커는 컨테이너 기반의 오픈소스 가상화 플랫폼입니다. 도커의 특징은 아래와 같습니다.
                            
                            1. 가상머신에 비해 가벼우며, VM을 포함하여 한 대의 서버에 여러 개의 서비스를 구동하기 좋습니다.
                            2. 보안상 취약점이 발견되더라도, 원래의 서버에 영향을 미치기가 쉽지 않은 격리된 구조입니다.
                            3. 가상머신들과 달리, 기존 리눅스 자원을 그대로 활용할 수 있어 여러 서비스들을 한 서버에서 가동하기 용이합니다.
                            4. 다른 컨테이너 환경을 쉽고 그대로 재현할 수 있는 이미지를 제공합니다.
                            
                            컨테이너 개발은 VM과 유사하지만 격리 속성을 완화시켜 애플리케이션 간에 운영체제(OS)를 공유합니다.
                            VM과 마찬가지로 컨테이너에는 자체 파일 시스템, CPU 점유율, 메모리, 프로세스 공간 등이 있습니다. 기본 인프라와의 종속성을 끊었기 떄문에, 클라우드나 OS 배포본에 모두 이식할 수 있습니다.
                            """)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(1)
                        .padding()
                    }
                }
            }
            .navigationTitle("Docker")
        }
    }
}

struct Kubernetes : View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack {
                        Text("""
                            Kubernetes(쿠버네티스)
                            
                            컨테이너화된 애플리케이션의 자동 배포, 스케일링 등을 제공하는 관리시스템으로 오픈 소스 컨테이너 플랫폼입니다.
                            구글에 의해 설계되었고 리눅스 재단에서 관리하고 있습니다.
                            
                            쿠퍼네티스는 다음과 같은 기능을 제공합니다.
                            
                            1. 서비스 디스커버리와 로드 밸런싱:
                            쿠버네티스는 DNS 이름을 사용하거나 자체 IP 주소를 사용하여 컨테이너를 노출할 수 있습니다. 컨테이너에 대한 트래픽이 많으면, 쿠버네티스는 네트워크 트래픽을 로드밸런싱하고 배포하여 배포가 안정적으로 이루어질 수 있습니다.
                            
                            2. 스토리지 오케스트레이션:
                            쿠버네티스를 사용하면 로컬 저장소, 공용 클라우드 공급자 등과 같이 원하는 저장소 시스템을 자동으로 탑재 할 수 있습니다.
                            
                            3. 자동화된 롤아웃과 롤백:
                            쿠버네티스를 사용하여 배포된 컨테이너의 원하는 상태를 서술할 수 있으며 현재 상태를 원하는 상태로 설정한 속도에 따라 변경할 수 있습니다. 예를 들어 쿠버네티스를 자동화해서 배포용 새 컨테이너를 만들고, 기존 컨테이너를 제거하고, 모든 리소스를 새 컨테이너에 적용할 수 있습니다.
                            
                            4. 자동화된 빈 패킹(bin packing):
                            컨테이너화된 작업을 실행하는데 사용할 수 있는 쿠버네티스 클러스터 노드를 제공한다. 각 컨테이너가 필요로 하는 CPU와 메모리(RAM)를 쿠버네티스에게 지시한다. 쿠버네티스는 컨테이너를 노드에 맞추어서 리소스를 가장 잘 사용할 수 있도록 해줍니다.
                            
                            5. 자동화된 복구(self-healing):
                            쿠버네티스는 실패한 컨테이너를 다시 시작하고, 컨테이너를 교체하며, '사용자 정의 상태 검사'에 응답하지 않는 컨테이너를 죽이고, 서비스 준비가 끝날 때까지 그러한 과정을 클라이언트에 보여주지 않습니다.
                            
                            6. 시크릿과 구성 관리:
                            쿠버네티스를 사용하면 암호, OAuth 토큰 및 SSH 키와 같은 중요한 정보를 저장하고 관리 할 수 있다. 컨테이너 이미지를 재구성하지 않고 스택 구성에 시크릿을 노출하지 않고도 시크릿 및 애플리케이션 구성을 배포 및 업데이트 할 수 있습니다.
                            """)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(1)
                        .padding()
                    }
                }
            }
            .navigationTitle("쿠버네티스")
        }
    }
}

struct FunctionalProgramming : View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack {
                        Text("""
                            함수형 프로그래밍은 자료 처리를 수학적 함수의 계산으로 취급하고 상태와 가변 데이터를 멀리하는 프로그래밍 패러다임의 하나입니다.
                            함수형 프로그래밍은 이름에서 알 수 있듯 함수의 응용을 강조합니다. 계산 가능성, 결정문제, 함수정의 함수 응용과 재귀를 연구하기 위해 개발된 형식체계인 람다 대수에 근간을 두고 있습니다.
                            """)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(1)
                        .padding()
                    }
                }
            }
            .navigationTitle("함수형 프로그래밍")
        }
    }
}

struct OverFlow : View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack {
                        Text("""
                            컴퓨터의 정수 연산의 계산 결과가 그 허용 범위를 초과할 때 발생하는 오류입니다.
                            
                            오버플로의 예로는 스택 오버플로가 있습니다.(Stack Overflow), 함수는 변수나 데이터 저장을 위해 스택이라는 메모리 공간을 만드는데,
                            이 함수가 재귀적으로 계속 실행되면 스택이 점점 생겨나고, 어느 순간 메모리가 부족한 순간에 생기는 오류입니다.
                            """)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(1)
                        .padding()
                    }
                }
            }
            .navigationTitle("오버플로")
        }
    }
}

        // Box(boxItem: boxmodel[20])
        struct ProgramView_Previews: PreviewProvider {
            static var previews: some View {
//                RestFulApiView()
                ProgramView()
            }
        }
