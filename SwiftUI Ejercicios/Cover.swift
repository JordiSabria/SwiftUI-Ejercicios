//
//  Cover.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 21/11/23.
//

import SwiftUI

struct Cover: View {
    var body: some View {
        Image(.MICHAEL_JACKSON_MOONWALKER!)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 60))
            .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
            .padding(.horizontal, 10)
            .overlay(alignment: .bottom){
                Rectangle()
                    .frame(maxHeight: 100)
                    .padding(10)
                    .opacity(0.0)
                    .overlay(alignment: .top){
                        VStack{
                            HStack{
                                Text("Titulo: Michael Jackson")
                                    .foregroundStyle(.white)
                                    .bold()
                                    .font(.headline)
                                Spacer()
                                Button{
                                }label: {
                                    Image(systemName: "star.circle")
                                        //.colorInvert()
                                        .renderingMode(.template)
                                        .foregroundColor(.white)
                                }
                            }
                            .padding(.horizontal)
                            Image(.musicProgressBar!)
                                .resizable()
                                .scaledToFit()
                                .padding(.horizontal)
                            HStack{
                                Text("0:00")
                                    .foregroundStyle(.white)
                                    .bold()
                                    .font(.subheadline)
                                Spacer()
                                Text("3:25")
                                    .foregroundStyle(.white)
                                    .bold()
                                    .font(.subheadline)
                            }
                            .padding(.horizontal)
                        }
                        .padding()
                    }
            }
    }
}

#Preview {
    Cover()
}
