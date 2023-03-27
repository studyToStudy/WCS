//
//  ProgramLang.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import Foundation
import SwiftUI

struct ProgramLang: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var subTitle: String
}

var programLanguage = [
    ProgramLang(image: "c-logo", title: "C", subTitle: "C"),
    ProgramLang(image: "python-logo", title: "파이썬", subTitle: "파이썬"),
    ProgramLang(image: "c-plus", title: "C++", subTitle: "C++"),
    ProgramLang(image: "c#", title: "C#", subTitle: "C#"),
    ProgramLang(image: "Java", title: "Java", subTitle: "자바"),
    ProgramLang(image: "js", title: "JavaScript", subTitle: "자바스크립트"),
]
