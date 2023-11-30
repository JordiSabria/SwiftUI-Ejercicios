//
//  Ejercicio4.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 30/11/23.
//

import SwiftUI

struct Ejercicio4: View {
    var body: some View {
        VStack{
            ZStack {
                Image(.imagenPerfil!)
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.top)
            }
            .overlay(){
                VStack {
                    Rectangle()
                        .frame(height: 500)
                        .opacity(0)
                    Text("Alejandra Perez")
                        .bold()
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .frame(width: 400, alignment: .leading)
                        .padding(.leading, 110)
                    Text("Software Engineer")
                        .bold()
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(width: 400, alignment: .leading)
                        .padding(.leading, 110)
                    Rectangle()
                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                        .foregroundStyle(.white)
                        .frame(height: 400)
                        .padding(.horizontal, 20)
                        .overlay(){
                            Text("prova")
                        }
                }
            }
            Spacer()
        }
        .background(.girlBackgroud)
        //.navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    NavigationStack{
        Ejercicio4()
    }
}
