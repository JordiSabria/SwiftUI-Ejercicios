//
//  TaskTapBar.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 22/11/23.
//

import SwiftUI

struct TaskTapBar: View {
    var body: some View {
        TabView{
            Ejercicio3()
                .tabItem {
                    Label("Cancel", systemImage: "xmark")
                }
            Ejercicio3()
                .tabItem {
                    Label("Delete", systemImage: "trash")
                }
            Ejercicio3()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    TaskTapBar()
}
