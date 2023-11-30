//
//  DiseñoButtonStyle.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 30/11/23.
//

import SwiftUI

struct DiseñoButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(10)
            .shadow(color: .primary.opacity(0.3),
                radius: 10, x: 5, y: 5)
            .buttonStyle(.bordered)
    }
    
    
}

extension View {
    var diseñoButtonStyle: some View {
        modifier(DiseñoButtonStyle())
    }
}
