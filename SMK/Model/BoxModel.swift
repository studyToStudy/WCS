//
//  BoxModel.swift
//  SMK
//
//  Created by 이정후 on 2023/03/29.
//

import Foundation
import SwiftUI

struct BoxModel: Identifiable {
    var id = UUID()
    var image: String
    var title: String
}

var boxmodel = [
    BoxModel(image: "그래프", title: "그래프"),
    BoxModel(image: "데이크스트라", title: "데이크스트라"),
    BoxModel(image: "버블", title: "버블"),
    BoxModel(image: "병합", title: "병합"),
    BoxModel(image: "삽입", title: "삽입"),
    BoxModel(image: "선택정렬", title: "선택정렬"),
    BoxModel(image: "이진트리", title: "이진트리"),
    BoxModel(image: "재귀1", title: "재귀"),
    BoxModel(image: "퀵", title: "퀵"),
    BoxModel(image: "토끼", title: "토끼"),
    BoxModel(image: "피보나치", title: "피보나치"),
    BoxModel(image: "Array", title: "Array"),
    BoxModel(image: "BFS", title: "BFS"),
    BoxModel(image: "DFS", title: "DFS"),
    BoxModel(image: "Hash", title: "Hash"),
    BoxModel(image: "Heap", title: "Heap"),
    BoxModel(image: "Stack", title: "Stack"),
    BoxModel(image: "Queue", title: "Queue"),
    BoxModel(image: "HashTable", title: "HashTable"),
    BoxModel(image: "레드블랙트리", title: "레드블랙트리"),
    BoxModel(image: "시간복잡도", title: "시간복잡도"),
    BoxModel(image: "이진탐색", title: "이진탐색"),
]
