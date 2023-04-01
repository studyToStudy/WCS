//
//  AlgorithmView.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI

struct DataSt: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("자료구조")) {
                    NavigationLink("자료구조") {
                        DataStruct()
                    }
                }
                NavigationLink("배열") {
                    ArrayView()
                }
                NavigationLink("튜플") {
                    TupleView()
                }
                NavigationLink("스택") {
                    StackView()
                }
                NavigationLink("큐") {
                    QueueView()
                }
                Section(header: Text("리스트")) {
                    NavigationLink("연결(Linked) 리스트") {
                        LinkedListView()
                    }
                }
                Section(header: Text("해시")) {
                    NavigationLink("해시 함수") {
                        HashView()
                    }
                    NavigationLink("해시 테이블") {
                        HashTableView()
                    }
                }
                
                Section(header: Text("비선형 구조")) {
                    NavigationLink("그래프") {
                        GraphView()
                    }
                    NavigationLink("트리") {
                        TreeView()
                    }
                    NavigationLink("레드-블랙 트리") {
                        RedBlackTree()
                    }
                    NavigationLink("힙") {
                        HeapView()
                    }
                }

            }
            .navigationTitle("자료구조")
        }
    }
}

struct WhatAlgorithm: View {
    var body: some View {
                NavigationStack {
                    VStack {
                        ScrollView {
                            Text("""
                                 알고리즘은 수학과 컴퓨터과학, 언어학 또는 관련 분야에서 어떠한 문제를 해결하기 위해 정해진 일련의 절차입니다.
                                 계산을 실행하기 위한 단계적 절차를 의미하기도 합니다. 즉, 문제 풀이에 필요한 계산 절차 또는 처리과정의 순서를 뜻합니다.
                                 """)
                            .padding()
        //                    .offset(y: -200)
                }
            }
            .navigationTitle("알고리즘이란")
        }
    }
}

struct DataStruct: View {
    var body: some View {
                NavigationStack {
                    VStack {
                        ScrollView {
                            Text("""
                                 자료구조(Data Strucure)는 컴퓨터 과학에서 효율적인 접근 및 수정을 가능케 하는 자료의 조직, 관리, 저장을 의미합니다.
                                 자료구조는 데이터 값의 모임, 또 데이타 간의 관계 그리고 데이터에 적용할 수 있는 함수나 명령을 의미합니다. 신중히 선택한 자료구조는 보다 효율적인 알고리즘을 사용할 수 있게 합니다.
                                 
                                 이러한 자료구조의 선택문제는 대개 추상 자료형의 선택으로부터 시작됩니다. 효과적으로 설계된 자료구조는 실행시간 혹은 매모리 용량과 같은 자원을 최사한으로 사용하면서 연산을 수행하도록 해줍니다.
                                 """)
                            .padding()
        //                    .offset(y: -200)
                }
            }
            .navigationTitle("자료구조란")
        }
    }
}

struct ArrayView: View {
    var body: some View {
                NavigationStack {
                    VStack {
                        ScrollView {
                            Text("""
                                 컴퓨터 과학에서 배열은 번호(인덱스)와 번호에 대응하는 테이터들로 이루어진 자료 구조를 나타냅니다.
                                 일반적으로 배열에는 같은 종류의 데이터들이 순차적으로 저장되어, 값의 번호가 곧 배열의 시작점으로부터 값이 저장되어 있는 상대적인 위치가 됩니다.
                                 
                                 우리가 흔히 사용하는 문자열도 배열의 종류이며, 학교에서 아이들을 학급으로 나누고 번호를 부여하는 것도 배열의 일종입니다..
                                 """)
                            .padding()
        //                    .offset(y: -200)
                }
            }
            .navigationTitle("배열(Array)")
        }
    }
}

struct TupleView: View {
    var body: some View {
                NavigationStack {
                    VStack {
                        ScrollView {
                            Text("""
                                 튜플은 셀 수 있는 수량의 순서가 있는 열거입니다.
                                 n개의 요소를 가진 튜플을 n-튜플 또는 n중쌍, n짝이라고도 합니다. 비어있는 열은 유일한 0-튜플입니다.
                                 임의의 n-튜플은 순서쌍의 개념을 이용하여 재귀적으로 정의됩니다. 튜플은 다른 수학 개념들을 나타내는 데에 자주 사용됩니다.
                                 """)
                            .padding()
        //                    .offset(y: -200)
                }
            }
            .navigationTitle("튜플(Tuple)")
        }
    }
}

struct StackView: View {
    var body: some View {
                NavigationStack {
                    VStack {
                        ScrollView {
                            Box(boxItem: boxmodel[16])
//                            Image("Stack")
//                                .resizable()
//                                .frame(width: 300, height: 300)
                            Text("""
                                 스택은 제한적으로 접근할 수 있는 나열 구조입니다. Last In-First Out의 후입선출의 특성을 가지고 있습니다.
                                 입력연산은 푸시(Push), 출력연산은 팝(Pop)이라고 합니다. 조회연산은 피크(Peek)라고 하는데, 탑 포인터가 가리키는 데이터를 조회만 할뿐 탑의 순번은 변화시키지 않습니다.
                                 
                                 팬케이크를 굽는다고 가정합니다. 생각해보면 우리가 팬케이크를 만들어 먹을때, 달구어진 프라이팬에 버터를 두르고 하나씩 굽기 시작합니다.
                                 이제 완성된 팬케이크는 한 개씩 접시에 옮겨 담을 차례이죠, 이때 팬케이크는 하나씩 쌓여 올려질 것 입니다. 위에서 하나씩 먹기 시작합니다. 맨 위의 팬케이크는 가장 마지막으로 올려진 팬케이크입니다. 가장 먼저 구워진 팬케이크는 제일 처음의 것이겠죠.
                                 
                                 이는 위에서 말한 Last In-First Out의 구조와 같습니다.
                                 """)
                            .padding()
        //                    .offset(y: -200)
                }
            }
            .navigationTitle("스택")
        }
    }
}

struct QueueView: View {
    var body: some View {
                NavigationStack {
                    VStack {
                        ScrollView {
                            Box(boxItem: boxmodel[17])
                            Text("""
                                 First In-First Out 선입선출의 특성을 가지고 있습니다. 영 단어로 Queue는 '일렬로 늘어선 사람들로 이루어진 줄'을 말하기도 합니다. 먼저 줄을 선 사람이 먼저 나갈 수 있는 상황을 연상하면 됩니다.
                                 
                                 링크드 리스트로 구현한 큐인 링크드 큐는 큐의 길이를 쉽게 늘릴 수 있어 오버플로우가 발생하지 않는 것이 특징입니다.
                                 필요에 따라 환형으로 만들 수도 있습니다.
                                 
                                 보통 어떠한 작업/데이터를 순서대로 실행/사용하기 위해 대기시킬 때 사용합니다.
                                 """)
                            .padding()
        //                    .offset(y: -200)
                }
            }
            .navigationTitle("큐")
        }
    }
}

struct LinkedListView: View {
    var body: some View {
                NavigationStack {
                    VStack {
                        ScrollView {
                            Text("""
                                 링크드 리스트는 각 노드가 데이터와 포인터를 가지고 한 줄로 연결되어 있는 방식으로 데이터를 저장하는 자료구조입니다.
                                 데이터를 담고있는 노드들이 연결되어 있는데, 노드의 포인터가 다음이나 이전의 노드와의 연결을 담당하게 됩니다.
                                 
                                 링크드 리스트의 종류로는 단일 연결 리스트, 이중 연결 리스트 등이 있습니다.
                                 
                                 링크드 리스트는 늘어선 노드의 중간지점에서도 자료의 추가와 삭제가 O(1)의 시간에 가능하다는 장점을 갖습니다. 그러나 배열이나 트리 구조와는 달리 특정 위치의 데이터를 검색해내는데에는 O(n)의 시간이 걸리는 단점이 있습니다.
                                 
                                 - 단일 연결 리스트
                                 
                                 단일 연결 리스트는 각 노드에 자료 공간과 한 개의 포인터 공간이 있고, 각 노드의 포인터는 다음 노드를 가리킵니다.
                                 
                                 - 이중 연결 리스트
                                 
                                 이중 연결 리스트의 구조는 단일 연결 리스트와 비슷하지만, 포인터 공간이 두 개가 있고 각각의 포인터는 앞의 노드와 뒤의 노드를 가리킵니다.
                                 """)
                            .padding()
        //                    .offset(y: -200)
                }
            }
            .navigationTitle("연결(Linked) 리스트")
        }
    }
}

struct HashView: View {
    var body: some View {
                NavigationStack {
                    VStack {
                        ScrollView {
                            Box(boxItem: boxmodel[14])
                                    
                                Text("""
                                     해시 함수(hash function) 또는 해시 알고리즘(hash algorithm)은 임의의 길이의 데이터를 고정된 길이의 데이터로 매핑하는 함수입니다. 해시 함수에 의해 얻어지는 값은 해시 값, 해시 코드, 해시 체크섬 또는 간단하게 해시라고 한다. 그 용도 중 하나는 해시 테이블이라는 자료구조에 사용되며, 매우 빠른 데이터 검색을 위한 컴퓨터 소프트웨어에 널리 사용된다. 해시 함수는 큰 파일에서 중복되는 레코드를 찾을 수 있기 때문에 데이터베이스 검색이나 테이블 검색의 속도를 가속할 수 있습니다.
                                     
                                     해시는 보안 분야에서도 널리 사용됩니다. 원래의 텍스트를 복호화할 수 없도록 하고 원문과 해시값 사이에 선형적 관계가 없다는 특성을 지니고 있기 때문입니다. 해시 함수의 결과물은 고정된 길이의 숫자이므로 원래의 정보는 손실됩니다.
                                     
                                     이러한 특성 때문에 하나의 데이터는 하나의 해시값만 가지게되고, 하나의 해시값을 만들어낼 수 있는 데이터는 매우 많게 됩니다.
                                     비밀번호, 전자서명, 전자투표 등 민감한 사항의 무결성을 검증하는데 사용됩니다.
                                     """)                            .padding()
        //                    .offset(y: -200)
                }
            }
            .navigationTitle("해시 함수")
        }
    }
}

struct HashTableView: View {
    var body: some View {
                NavigationStack {
                    VStack {
                        ScrollView {
                            Box(boxItem: boxmodel[18])
                            Text("""
                                 해시 테이블, 해시 맵, 해시 표는 컴퓨팅에서 키를 값에 매핑할 수 있는 자료 구조입니다.
                                 해시 테이블은 해시 함수를 사용해서 Index(색인)를 Bucket이나 Slot의 배열로 계산합니다.
                                 
                                 
                                 """)
                            .padding()
        //                    .offset(y: -200)
                }
            }
            .navigationTitle("해시 테이블")
        }
    }
}

struct GraphView: View {
    var body: some View {
                NavigationStack {
                    VStack {
                        ScrollView {
                            Box(boxItem: boxmodel[0])
                            Text("""
                                 그래프는 vertex와 edge로 구성된 한정된 자료구조를 의미합니다. vertex는 정점, edge는 정점과 정점을 연결하는 간선입니다.
                                 
                                 이론적으로 그래프는 리스트와 행렬 구조 중의 하나로 구별이 가능합니다. 하지만 실제 적용에 있어서 그래프는 이 두 구조의 조합된 형태를 띄게됩니다.
                                 
                                 예를 들어 각각의 도시를 정점으로 하고 도시 사이를 잇는 도로를 변으로 생각하면 곧 하나의 약도가 됩니다. 위 이미지와 같이 표시할 수 있겠군요.
                                 
                                 또 그래프는 유향 그래프와 무향 그래프로 나뉩니다. 변이 방향성을 갖는지 갖지 않는지에 따른 그래프의 분류입니다.
                                 무향 그래프의 경우 순환이 없는 연결 그래프, 유향 그래프의 경우 변의 방향은 보통 부모를 가리키도록 구현됩니다.
                                 
                                 """)
                            .padding()
        //                    .offset(y: -200)
                }
            }
            .navigationTitle("그래프")
        }
    }
}

struct TreeView: View {
    var body: some View {
                NavigationStack {
                    VStack {
                        ScrollView {
                            Box(boxItem: boxmodel[6])
                            Text("""
                                 트리 구조란 그래프의 일종입니다. 한 노드에서 시작해서 다른 정점들을 순회하여 자기 자신에게 돌아오는 순환이 없는 연결 그래프입니다.
                                 
                                 트리에서 최상위 노드를 루트 노드(Root node)라고 합니다. 또한 노드 A가 노드 B를 가리킬 때 A를 B의 부모 노드(Parent Node), B를 A의 자식 노드(Child node)라고 합니다. 자식 노드가 없는 노드를 잎 노드(Leaf node) 또는 말단 노드(Terminal node)라고 합니다.
                                 
                                 트리 자료구조에는 여러 가지가 있습니다.
                                 - 이진 탐색 트리
                                 - 레드-블랙 트리
                                 - AVL 트리
                                 """)
                            .padding()
        //                    .offset(y: -200)
                }
            }
            .navigationTitle("트리")
        }
    }
}

struct RedBlackTree: View {
    var body: some View {
                NavigationStack {
                    VStack {
                        ScrollView {
                            Box(boxItem: boxmodel[19])
//                            Image("레드블랙트리")
//                                .resizable()
//                                .frame(width: 380, height: 200)
                            Text("""
                                 레드-블랙 트리는 자가 균형 이진 탐색 트리입니다. 자가 균형 이진 탐색 트리는 삽입과 삭제가 일어나는 경우에 자동으로 그 높이를 작게 유지하는 이진 탐색 트리입니다. 트리에 n개의 원소가 있을 때 O(log n)의 시간복잡도로 삽입, 삭제, 검색을 실행할 수 있습니다.
                                 
                                 레드-블랙 트리는 자료의 삽입과 삭제 검색에서 최악의 경우에도 일정한 실행 시간을 보장합니다. 이는 특히 함수형 프로그래밍에서 유용한데, 함수형 프로그래밍에서 쓰이는 연관 배열이나 집합(Set) 등을 내부적으로 레드-블랙 트리로 구현해 놓은 경우가 많습니다.
                                 
                                 레드-블랙 트리는 각각의 노드가 레드나 블랙인 색상 속성을 가지고 있는 이진 탐색 트리로서, 이진 탐색 트리에 다음의 조건이 추가되어야만 유효한 레드-블랙 트리가 됩니다.
                                 
                                 1. 노드는 레드 혹은 블랙 중의 하나이다.
                                 2. 루트 노드는 블랙이다.
                                 3. 모든 리프 노드들은 블랙이다.
                                 4. 레드 노드의 자식노드 양쪽은 언제나 블랙이다. (레드 노드는 연달아 등장할 수 없고, 블랙 노드만이 레드 노드의 부모가 될 수 있습니다.)
                                 5. 어떤 노드로부터 시작되어 그에 속한 하위 리프 노드에 도달하는 모든 경로에는 리프 노드를 제외하면 모두 같은 개수의 블랙 노드가 있다.
                                 
                                 """)
                            .padding()
        //                    .offset(y: -200)
                }
            }
            .navigationTitle("레드-블랙 트리")
        }
    }
}

struct HeapView: View {
    var body: some View {
                NavigationStack {
                    VStack {
                        ScrollView {
                            Box(boxItem: boxmodel[15])
                            Text("""
                                 힙(Heap)은 최댓값 및 최솟값을 찾아내는 연산을 빠르게 하기 위해 고안된 완전 이진 트리를 기본으로 한 자료구조입니다. 힙은 다음과 같은 속성을 만족합니다.
                                 
                                 A가 B의 부모노드이면 A의 키(Key)값과 B의 키값 사이에는 대소관계가 성립한다.
                                 
                                 힙에는 두가지 종류가 있습니다. 부모노드의 키값이 자식노드의 키값보다 항상 큰 힙을 '최대 힙', 부모노드의 키 값이 자식노드의 키값보다 항상 작은 힙을 '최소 힙'이라고 합니다.
                                 키 값의 대소관계는 부모 자식 노드에만 성립하며 형제 노드 사이에는 성립하지 않습니다.
                                 
                                 각 노드의 자식노드의 최대개수는 힙의 종류에 따라 다르지만, 대부분의 경우는 자식노드의 개수가 최대 2개인 이진 힙(binary heap)을 사용합니다.

                                 힙에서는 가장 높은(혹은 가장 낮은) 우선순위를 가지는 노드가 항상 뿌리노드에 오게 되는 특징이 있으며, 이를 응용하면 우선순위 큐와 같은 추상적 자료형을 구현할 수 있습니다.
                                 
                                 """)
                            .padding()
        //                    .offset(y: -200)
                }
            }
            .navigationTitle("힙")
        }
    }
}


struct DataSt_Previews: PreviewProvider {
    static var previews: some View {
        DataSt()
    }
}
