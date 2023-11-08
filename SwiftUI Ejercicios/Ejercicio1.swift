//
//  Ejercicio1.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 5/11/23.
//

import SwiftUI

struct Ejercicio1: View {
    var body: some View {
        VStack{
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
            Spacer()
            HStack{
                Image(systemName: "volume")
                    
                Image(.musicProgressBar!)
                    .resizable()
                    .scaledToFit()
                Image(systemName: "volume.3")
            }
            .padding(.horizontal)
            HStack{
                VStack{
                    Button{
                    } label: {
                        Image(systemName: "backward")
                            .padding()
                    }
                    .buttonStyle(.miBoton)
                    .buttonBorderShape(.circle)
                    Text("Backward")
                        .font(.subheadline)
                }
                Spacer()
                VStack{
                    Button{
                    } label: {
                        Image(systemName: "play")
                            .padding()
                    }
                    .buttonStyle(.miBoton)
                    .buttonBorderShape(.circle)
                    Text("Play")
                        .font(.subheadline)
                }
                Spacer()
                VStack{
                    Button{
                    } label: {
                        Image(systemName: "forward")
                            .padding()
                    }
                    .buttonStyle(.miBoton)
                    .buttonBorderShape(.circle)
                    Text("Forward")
                        .font(.subheadline)
                }
            }
            .padding(20)
        }
    }
}

#Preview {
    Ejercicio1()
}
