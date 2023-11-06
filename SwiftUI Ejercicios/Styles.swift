//
//  Styles.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 6/11/23.
//

import SwiftUI

struct MiEstiloBoton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background {
                Color(.gray)
                    .opacity(0.4)
            }
            .clipShape(Circle())
            .shadow(color: .primary.opacity(0.3),
                    radius: 10, x: 5, y: 5)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
            //.opacity(configuration.isPressed ? 0.5 : 1.0)
    }
}
