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
                        .textStyle
                        .font(.largeTitle)
                    Text("Software Engineer")
                        .textStyle
                        .font(.headline)
                    Rectangle()
                        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                        .foregroundStyle(.white)
                        .frame(height: 400)
                        .padding(.horizontal, 20)
                        .overlay{
                            VStack(alignment: .leading){
                                Label("Live in New York ", systemImage: "house.circle.fill")
                                    .labelStle
                                Label("Drive License: B", systemImage: "car.circle.fill")
                                    .labelStle
                                Label("State: Married", systemImage: "ring.circle.fill")
                                    .labelStle
                                Label("Software Engineer - HARDVARD", systemImage: "graduationcap.circle.fill")
                                    .labelStle
                                Label("Expert on Artificial Inteligent", systemImage: "fireworks")
                                    .labelStle
                                Label("Work at OpenAI since 2021", systemImage: "list.bullet.clipboard.fill")
                                    .labelStle
                                Label("Work at Tesla since 2019", systemImage: "list.bullet.clipboard.fill")
                                    .labelStle
                                Label("Animals: 2 cats", systemImage: "cat.circle.fill")
                                    .labelStle
                                HStack(alignment: .center){
                                    Spacer()
                                    Button { }label: {
                                        Image(systemName: "paperplane")
                                            .resizable()
                                            .scaledToFit()
                                    }
                                    .buttonStyle(.bordered)
                                }
                            }
                            .frame(width: 300, height: 350, alignment: .topLeading)
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
