//
//  wheaderCountry.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 21/11/23.
//

import SwiftUI

struct wheaderCountry: View {
    let wheaterLogo: String
    let city: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white.opacity(0.9))
                .frame(width: 50, height: 55)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .shadow(color: .black.opacity(0.6), radius: 10, x: 5, y: 10)
            VStack {
                Image(systemName: wheaterLogo)
                Text(city)
                    .font(.footnote)
                    .padding(.top, 1.0)
            }
        }
    }
}

#Preview {
    wheaderCountry(wheaterLogo: "sun.max.fill", city: "BCN")
}
