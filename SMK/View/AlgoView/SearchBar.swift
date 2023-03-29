//
//  SearchBar.swift
//  SMK
//
//  Created by 이정후 on 2023/03/29.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
 
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
 
                TextField("Search", text: $text)
                    .foregroundColor(.primary)
 
                if !text.isEmpty {
                    Button(action: {
                        self.text = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                    }
                } else {
                    EmptyView()
                }
            }
            .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
            .foregroundColor(.secondary)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10.0)
        }
        .padding(.horizontal)
    }
}

struct SearchViewSe: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
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
                } //리스트의 스타일 수정
                .listStyle(PlainListStyle())
                  //화면 터치시 키보드 숨김
                .onTapGesture {
                    hideKeyboard()
                }
            }
            .navigationBarTitle("검색기능")
            .navigationBarItems(trailing:
                                    HStack{
                                        Button(action: {
                                        }) {
                                            HStack {
                                                Text("서근")
                                                    .foregroundColor(.black)
                                                Image(systemName: "folder.fill")
                                            }
                                        }
                                    }
            )
        }
    }

struct ContentViewSe_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewSe()
    }
}
 
 
//화면 터치시 키보드 숨김
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
