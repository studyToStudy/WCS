//
//  DataStructureView.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI


struct DataStructureView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("알고리즘") {
                    WhatAlgorithm()
                }
                Section(header: Text("재귀")) {
                    NavigationLink("재귀") {
                        RecursionView()
                    }
                    NavigationLink("피보나치 수열") {
                        FibonacciView()
                    }
                }
                Section(header: Text("정렬 알고리즘")) {
                    NavigationLink("선택 정렬") {
                        SelectSort()
                    }
                    NavigationLink("버블 정렬") {
                        BubbleSort()
                    }
                    NavigationLink("삽입 정렬") {
                        InsertSort()
                    }
                    NavigationLink("병합 정렬") {
                        MergeSort()
                    }
                    NavigationLink("퀵 정렬") {
                        QuickSort()
                    }
                }
                Section(header: Text("탐색 알고리즘")) {
                    NavigationLink("탐색") {
                        SearchView()
                    }
                    NavigationLink("DFS") {
                        DFSView()
                    }
                    NavigationLink("BFS") {
                        BFSView()
                    }
                }
                NavigationLink("데이크스트라 알고리즘") {
                    DaicstraAlgo()
                }
            }
            .navigationTitle("알고리즘")
        }
    }
}

struct RecursionView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Box(boxItem: boxmodel[7])
                    Text("""
                         재귀는 정의 단계에서 자신을 재참조하는 것을 말합니다.
                         
                         하나의 재귀 함수는 자신을 다시 호출하여 작업을 수행하는 방식으로 주어진 문제를 푸는 방법입니다.
                         """)
                    .padding()
                }
            }
            .navigationTitle("재귀")
        }
    }
}

struct FibonacciView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Box(boxItem: boxmodel[9])
//                    Image("토끼")
//                        .resizable()
                    Text("""
                         n 번째 달의 토끼의 수는?
                         
                         1. 첫달에는 새로 태어난 토끼 한 쌍만이 존재합니다.
                         2. 두 달 이상이 된 토끼는 번식이 가능합니다.
                         3. 번식 가능한 토끼 한 쌍은 매달 새끼 한 쌍을 낳습니다.
                         4. 토끼는 죽지 않습니다.(??)
                         
                         따라서 첫 달에는 새로 태어난 토끼 한 쌍이 있고, 두 번째 달에는 그대로 토끼 한 쌍, 세 번째 달부터는 이 토끼 한 쌍이 새끼를 낳게 되어 토끼가 2쌍이 되고, 네 번째 달에는 3쌍, 다섯 번째 달에는 5쌍이 된다. 이때 n번째 달에 a 쌍의 토끼가 있었고, 다음 n+1번째 달에는 새로 태어난 토끼를 포함해 b쌍이 있었다고 하면, 그다음 n+2 번째 달에는 a+b 쌍의 토끼가 있게 됩니다. 이는 n번째 달에 살아있던 토끼는 충분한 나이가 되어 새끼를 낳을 수 있지만, 바로 전 달인 n+1번째 달에 막 태어난 토끼는 아직 새끼를 낳을 수 없기 때문이다.
                         """)
                    .padding()
                }
            }
            .navigationTitle("피보나치")
        }
    }
}

struct SelectSort: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Box(boxItem: boxmodel[5])
                        Text("""
                             선택 정렬은 제자리 정렬 알고리즘의 하나입니다. 순서도는 아래와 같습니다.
                             
                             1. 주어진 리스트 중에 최소값을 찾습니다.
                             2. 그 값을 맨 앞에 위치한 값과 교체합니다.
                             3. 맨 처음 위치를 뺀 나머지 리스트를 같은 방법으로 교채합니다.
                             
                             """)
                        .padding()
                    }
                }
            .navigationTitle("선택 정렬")
        }
    }
}

struct BubbleSort: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Box(boxItem: boxmodel[2])
                        Text("""
                             버블 정렬은 기본적으로 두 수(a, b)를 선택한 뒤, 만약 그 두 수가 정렬되었다면 놔두고 아니라면 두 수를 바꾸는 방식으로 진행됩니다.
                             
                             오름차순으로 정렬할 때는 a < b, 내림차순이라면 a > b이어야 정렬된 것으로 판단합니다. 이를 배열의 처음부터 끝까지 반복합니다. 배열에 변화가 없다면 종료됩니다.
                             
                             """)
                        .padding()
                    }
                }
            .navigationTitle("버블 정렬")
        }
    }
}

struct InsertSort: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Box(boxItem: boxmodel[4])
                        Text("""
                             삽입 정렬은 자료 배열의 모든 요소를 앞에서부터 차례대로 이미 정렬된 배열부분과 비교하여, 자신의 위치를 찾아 삽입함으로써 정렬을 완성합니다.
                             
                             n번째 원소를 1부터 n-1까지 비교해 적절한 위치에 끼워놓고, 그 뒤에 자료를 한 칸씩 뒤로 밀어냅니다.
                             자료구조에 따라 시간편차가 크며, 작은 수가 뒤에 많을 경우 상당히 오랜 시간이 걸립니다.
                             
                             그러나 배열이 적을 경우에 상당히 효율적입니다.
                             """)
                        .padding()
                    }
                }
            .navigationTitle("삽입 정렬")
        }
    }
}

struct MergeSort: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Box(boxItem: boxmodel[3])
                        Text("""
                             병합 정렬 또는 합병 정렬의 개발자는 존 폰 노이만입니다. 원소 개수가 1 또는 0이 될 때까지 두 부분으로 쪼개고 쪼개서 자른 순서의 역순으로 크기를 비교해 병합해 나갑니다.
                             
                             병합된 부분 안은 이미 정렬되어 있으므로 전부 비교하지 않아도 제자리를 찾을 수 있습니다.
                             
                             흔히 사용되는 2-way 병합 정렬은 다음과 같은 순서도를 가지고 있습니다.
                             
                             1. 리스트의 길이가 1 이하이면 이미 정렬된 것으로 본다. 그렇지 않은 경우에는
                             2. 분할(divide): 정렬되지 않은 리스트를 절반으로 잘라 비슷한 크기의 두 부분 리스트로 나눈다.
                             3. 정복(conquer): 각 부분 리스트를 재귀적으로 합병 정렬을 이용해 정렬한다.
                             4. 결합(combine): 두 부분 리스트를 다시 하나의 정렬된 리스트로 합병한다. 이때 정렬 결과가 임시배열에 저장된다.
                             5. 복사(copy): 임시 배열에 저장된 결과를 원래 배열에 복사한다.
                             """)
                        .padding()
                    }
                }
            .navigationTitle("병합 정렬")
        }
    }
}

struct QuickSort: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Box(boxItem: boxmodel[8])
                        Text("""
                             찰스 앤터니 리처드 호어가 개발한 정렬 알고리즘입니다. 다른 원소와의 비교만으로 정렬을 수행하는 비교 정렬에 속합니다.
                             
                             퀵 정렬은 n개의 데이터를 정렬할 때, 최악의 경우에는 O(n2)번의 비교를 수행하고, 평군적으로 O(n log n)번의 비교를 수행합니다.
                             
                             퀵 정렬의 내부 루프는 대부분 컴퓨터 아키텍처에서 효율적으로 작동하도록 설계되어 있고, 대부분의 데이터를 정렬할 때 제곱 시간이 걸릴 확률이 거의 없도록 알고리즘을 설계하는 것이 가능합니다.
                             또한 매 단계에서 적어도 1개의 원소가 자기 자리를 찾게 되므로 이후 정렬할 개수가 줄어들게 됩니다.
                             """)
                        .padding()
                    }
                }
            .navigationTitle("퀵 정렬")
        }
    }
}

struct SearchView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                        Text("""
                             검색 문제를 해결하는 알고리즘으로, 일부 데이터 구조 안에 저장된 정보를 검색하거나 검색 공간에서 계산을 하기 위해 사용됩니다.
                             """)
                        .padding()
                    }
                }
            .navigationTitle("탐색")
        }
    }
}

struct DFSView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Box(boxItem: boxmodel[13])
                        Text("""
                             Depth First Search, DFS(깊이 우선 탐색)라고 합니다.
                             
                             트리나 그래프에서 한 루트로 탐색하다가 특정 상황에서 깊숙이 들어가 확인한 뒤 다시 돌아가 다른 루트로 탐색하는 방식입니다.
                             일반적으로 재귀호출을 사용하여 구현되며, 스택이나 배열로도 구현 가능합니다.
                             
                             그래프에서는 깊이(depth)를 결정해야 합니다. 일반적으로 그래프에서는 루트 노드의 깊이를 0으로 하며, 임의의 노드와 깊이는 이의 부모 중 가장 깊이가 작은 것의 깊이에 1을 더한 값으로 정의합니다.
                             
                             현 경로상의 노드들만을 기억하면 되므로 저장공간의 수요가 비교적 적습니다. 그러나 해가 없는 경로에 깊이 빠질 가능성이 있습니다.
                             임의의 깊이까지 탐색한 후 목표노드를 발견하지 못한다면 다음 경로를 따라 탐색하는 방법이 유용할 수 있습니다. 얻어진 해가 최단 경로가 된다는 보장이 없기 때문입니다.
                             """)
                        .padding()
                    }
                }
            .navigationTitle("DFS")
        }
    }
}

struct BFSView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Box(boxItem: boxmodel[12])
                        Text("""
                             Breadth First Search, BFS(너비 우선 탐색)라고 합니다.
                             
                             BFS는 시작 정점을 방문한 후 시작 정점에 인접한 모든 정점들을 우선 방문하는 방법입니다. 더 이상 방문하지 않은 정점이 없을 때까지 모든 정점들에 대해서도 너비 우선 검색을 적용합니다.
                             
                             DFS와의 큰 차이로는, 여러 갈래 중 무한한 길이를 가지는 경로가 존재하고 탐색 목표가 다른 경로에 존재하는 경우 DFS로 탐색할 경우에는 무한한 길이와 영원한 통로에서 종료하지 못하지만 BFS의 경우는 모든 경로를 동시에 진행하기 때문에 탐색이 가능합니다.
                             
                             """)
                        .padding()
                    }
                }
            .navigationTitle("BFS")
        }
    }
}

struct DaicstraAlgo: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    Box(boxItem: boxmodel[1])
                        Text("""
                             데이크스트라 알고리즘은 최단 경로를 찾는 알고리즘입니다.
                             
                             음의 가중치가 없는 그래프의 한 정점에서 모든 정점까지의 최단 거리를 구하는 알고리즘으로 그래프 방향과 무관하게 간선들 중 하나라도 가중치가 음수일 경우에는 이 알고리즘을 사용할 수 없습니다.
                             
                             도시의 지도에서 출발지와 목적지 사이의 가장 짧은 거리를 찾는다고 가정합니다. 데이크스트라 알고리즘에서는 교차점마다 출발지로부터의 거리를 적어서 가장 짧은 거리를 찾습니다.

                             데이크스트라 알고리즘에서는 우선 모든 교차점에 무한대를 적어놓습니다. 이 표시는 실제 거리가 무한대라는 뜻이 아니라 교차로에 가보지 않았다는 것을 의미합니다. 변형된 데이크스트라 알고리즘에서는 표시되지 않음을 써놓기도 합니다.

                             다음으로는 모든 교차점을 표시할 때까지 반복합니다. 우선 현재 위치를 정하고 시작점으로부터의 거리를 씁니다. 시작할 때의 현재 위치는 시작점이다. 그리고 시작점으로부터의 거리는 0입니다.

                             그 다음 현재 위치와 연결되어있는 교차로들의 거리를 갱신합니다. 현재 위치에는 시작점으로부터 가장 짧은 거리가 쓰여 있습니다. 현재 위치에는 현재 시작점으로부터 가장 짧은 거리가 쓰여있습니다. 현재 위치 T에 쓰여있는 거리를 A, 이웃 교차로로 연결된 도로의 길이를 B, 이웃 교차로에 쓰여있는 거리를 C라고 할 때, A + B < C이면 이웃 교차로에 대한 거리는 A + B이며 이 값은 T로부터 계산되었다라고 씁니다. 이 과정을 완화라고 합니다.

                             현재 위치에서 연결된 모든 이웃 교차로에 대해 완화가 끝나면 현재 위치에 '방문함'이라고 적고 현재 위치에서 가장 가까운, 방문하지 않은 교차로로 이동합니다. 방문표시가 된 교차로에는 항상 최단거리가 적혀있을테죠. 만약 방문하지 않은 이웃 교차로가 없는 경우에는 현재 위치의 거리가 계산된 교차로로 돌아가서 가까운 방문하지 않은 교차로로 이동합니다.

                             현재 위치가 목적지라면 탐색을 종료한 뒤 최단 거리를 바탕으로 최단 경로를 찾습니다. 출발지를 제외한 모든 교차로에는 자신이 계산되어온 교차로가 쓰여 있을 것이고, 이 교차로를 부모 노드라고 합니다. 목적지에서 부모 노드를 계속 따라가면 최단경로를 따라서 출발지에 도착하게 됩니다.
                             
                             """)
                        .padding()
                    }
                }
            .navigationTitle("데이크스트라 알고리즘")
        }
    }
}

struct DataStructureView_Previews: PreviewProvider {
    static var previews: some View {
        DataStructureView()
    }
}
