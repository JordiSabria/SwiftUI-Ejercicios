//
//  TextStyle.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 5/12/23.
//

import SwiftUI

struct TextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .bold()
            .foregroundStyle(.white)
            .frame(width: 400, alignment: .leading)
            .padding(.leading, 110)
    }
}
extension View {
    var textStyle: some View {
        modifier(TextStyle())
    }
}
