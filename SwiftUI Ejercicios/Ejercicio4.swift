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
                        .overlay{
                            VStack(alignment: .leading){
                                Label("Live in New York ", systemImage: "house.circle.fill")
                                    .foregroundStyle(.blue)
                                    .padding(5)
                                Label("Drive License: B", systemImage: "car.circle.fill")
                                    .foregroundStyle(.blue)
                                    .padding(5)
                                Label("State: Married", systemImage: "ring.circle.fill")
                                    .foregroundStyle(.blue)
                                    .padding(5)
                                Label("Software Engineer - HARDVARD", systemImage: "graduationcap.circle.fill")
                                    .foregroundStyle(.blue)
                                    .padding(5)
                                Label("Expert on Artificial Inteligent", systemImage: "fireworks")
                                    .foregroundStyle(.blue)
                                    .padding(5)
                                Label("Work at OpenAI since 2021", systemImage: "list.bullet.clipboard.fill")
                                    .foregroundStyle(.blue)
                                    .padding(5)
                                Label("Work at Tesla since 2019", systemImage: "list.bullet.clipboard.fill")
                                    .foregroundStyle(.blue)
                                    .padding(5)
                                Label("Animals: 2 cats", systemImage: "cat.circle.fill")
                                    .foregroundStyle(.blue)
                                    .padding(5)
                                HStack(alignment: .center){
                                    Spacer()
                                    Button {
                                        
                                    }label: {
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
