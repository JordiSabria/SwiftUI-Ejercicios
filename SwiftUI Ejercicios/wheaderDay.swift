//
//  wheaderDay.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 21/11/23.
//

import SwiftUI

struct wheaderDay: View {
    let dayWeek: String
    let temperature: Int
    let min: Int
    let max: Int
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white.opacity(0.9))
                .frame(width: 80, height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .black.opacity(0.6), radius: 10, x: 5, y: 10)
            VStack {
                Text(dayWeek)
                Image(systemName:"sun.max")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                Text("\(temperature)º")
                Text("min:\(min) max:\(max)")
                    .font(.system(size: 8))
                    .padding(.horizontal, 5.0)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    wheaderDay(dayWeek: "Monday", temperature: 28, min: 15, max: 35)
}
