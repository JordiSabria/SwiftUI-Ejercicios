//
//  ContentView.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 5/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var conVM = ContentVM()
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(.jAacademy!)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 200, maxHeight: 200)
                Button(){
                    conVM.ejercicio1.toggle()
                } label: {
                    Text("Ejercicio1")
                }
                .navigationDestination(isPresented: $conVM.ejercicio1) {
                    Ejercicio1()
                }
                .shadow(color: .primary.opacity(0.3),
                        radius: 10, x: 5, y: 5)
                Button(){
                    conVM.ejercicio2.toggle()
                } label: {
                    Text("Ejercicio2")
                }
                .navigationDestination(isPresented: $conVM.ejercicio2) {
                    Ejercicio2()
                }
                .shadow(color: .primary.opacity(0.3),
                        radius: 10, x: 5, y: 5)
                Button(){
                    conVM.ejercicio3.toggle()
                } label: {
                    Text("Ejercicio3")
                }
                .navigationDestination(isPresented: $conVM.ejercicio3) {
                    TaskTapBar()
                }
                .shadow(color: .primary.opacity(0.3),
                        radius: 10, x: 5, y: 5)

            }
            .buttonStyle(.bordered)
        .padding()
        }
    }
}

#Preview {
    ContentView()
}
