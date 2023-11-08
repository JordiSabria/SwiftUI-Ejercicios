//
//  Ejercicio2.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 6/11/23.
//

import SwiftUI

struct Ejercicio2: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.linearGradient(colors: [.gray.opacity(0.1), .gray.opacity(0.4)],
                                      startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            VStack {
                HStack{
                    Image(systemName: "dot.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 30)
                    Spacer()
                    Image(systemName: "smiley")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 30)
                }
                .padding()
                HStack{
                    Image(.sol!)
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal)
                        .shadow(color: .black.opacity(0.4), radius: 10, x: 0, y: 30)
                        .frame(maxWidth: 300)
                }
            }
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Ejercicio2()
}
