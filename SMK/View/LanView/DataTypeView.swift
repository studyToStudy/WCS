//
//  DataTypeView.swift
//  SMK
//
//  Created by 이정후 on 2023/03/27.
//

import SwiftUI

struct DataTypeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack {
                        Text("""
                            자료형 또는 데이터 타입은 CS와 프로그래밍 언어에서 실수치, 정수, 불린 자료형과 같은
                            여러 종류의 데이터를 식별하는 분류로서, 더 나아가 해당 자료형에 대한 가능한 값,
                            해당 자료형에서 수행할 수 있는 명령들, 데이터의 의미, 해당 자료형의 값을 저장하는 방식을 결정합니다.
                            
                            컴퓨터의 기억장치에 저장된 값, 객체의 표현, 해석, 구조를 설명하며 자료형 체계 안의 데이터의 해석에 사용됩니다.
                            여러 종류의 자료형 체계는 다양한 범위의 자료형 안전을 보증하며, 자료형 정보를 사용하여 데이터에 접근하고
                            프로그램의 유효성을 확인합니다.
                            
                            거의 모든 프로그래밍 언어들은 명시적으로 자료형의 개념을 표현하지만 다른 언어들은 다른 용어를 사용할 수 있습니다.
                            일반적인 자료형은 다음과 같습니다.
                            - 정수(Integer)
                            - 불린(Boolean)
                            - 문자 한개(Character)
                            - 부동소수점(floating 혹은 double)
                            - 문자열(String)
                            """)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(1)
                        .padding()
                    }
                }
            }
            .navigationTitle("자료형")
        }
    }
}

struct DataTypeView_Previews: PreviewProvider {
    static var previews: some View {
        DataTypeView()
    }
}
