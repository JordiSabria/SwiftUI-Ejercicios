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
                HStack{
                    Image(.temperaturaPlantas!)
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .frame(maxWidth: 300)
                }
                HStack{
                    wheaderDay(dayWeek: "Sunday", temperature: 28, min: 15, max: 30)
                        .padding(.horizontal, 5)
                    wheaderDay(dayWeek: "Monday", temperature: 25, min: 15, max: 30)
                        .padding(.horizontal, 5)
                    wheaderDay(dayWeek: "Tuesday", temperature: 28, min: 15, max: 30)
                        .padding(.horizontal, 5)
                }
                .padding(.bottom)
                
                HStack{
                    wheaderCountry(wheaterLogo: "cloud.drizzle", city: "BCN")
                    wheaderCountry(wheaterLogo: "cloud.drizzle", city: "PAR")
                    wheaderCountry(wheaterLogo: "cloud.bolt.rain", city: "LON")
                    wheaderCountry(wheaterLogo: "cloud.snow", city: "NYC")
                    wheaderCountry(wheaterLogo: "sun.max", city: "BRA")
                }
                Image(.barra)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Ejercicio2()
}
