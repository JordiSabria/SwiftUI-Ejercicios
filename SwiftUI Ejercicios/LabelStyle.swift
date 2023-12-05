//
//  LabelStyle.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 5/12/23.
//

import SwiftUI

struct LabelStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.blue)
            .padding(5)
    }
}
extension View {
    var labelStle: some View {
        modifier(LabelStyle())
    }
}

