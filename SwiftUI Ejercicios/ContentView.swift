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
                    .padding(10)
                Button(){
                    conVM.ejercicio1.toggle()
                } label: {
                    Text("Diseño 1")
                }
                .navigationDestination(isPresented: $conVM.ejercicio1) {
                    Ejercicio1()
                }
                .diseñoButtonStyle
                Button(){
                    conVM.ejercicio2.toggle()
                } label: {
                    Text("Diseño 2")
                }
                .navigationDestination(isPresented: $conVM.ejercicio2) {
                    Ejercicio2()
                }
                .diseñoButtonStyle
                Button(){
                    conVM.ejercicio3.toggle()
                } label: {
                    Text("Diseño 3")
                }
                .navigationDestination(isPresented: $conVM.ejercicio3) {
                    TaskTapBar()
                }
                .diseñoButtonStyle
                Button(){
                    conVM.ejercicio4.toggle()
                } label: {
                    Text("Diseño 4")
                }
                .navigationDestination(isPresented: $conVM.ejercicio4) {
                    Ejercicio4()
                }
                .diseñoButtonStyle
            }
        }
    }
}

#Preview {
    ContentView()
}
