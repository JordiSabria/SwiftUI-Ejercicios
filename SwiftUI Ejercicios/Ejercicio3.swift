//
//  Ejercicio3.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 21/11/23.
//

import SwiftUI

struct Ejercicio3: View {
    
    var body: some View {
        NavigationStack{
            TaskButtonsBar()
            TaskBigButtonsBar()
            List{
                TaskCell(taskMsg: "🦮 Sacar a pasear al perro")
                TaskCell(taskMsg: "🗑️ Ir a tirar la basura")
                TaskCell(taskMsg: "🛒 Ir a comprar la comida")
                TaskCell(taskMsg: "🍱 Hacer la comida")
                TaskCell(taskMsg: "👨🏻‍💻 Acavar ejercicios SwiftUI")
                TaskCell(taskMsg: "💩 Intentar no enviar a la mierda XCode")
                TaskCell(taskMsg: "🧘🏻‍♂️ Meditar para aguantar la programación")
                TaskCell(taskMsg: "💻 Recordar qué ha valido el portatil antes de tirarlo por la ventana")
                TaskCell(taskMsg: "😮‍💨 Respirar ondo y expirar")
                TaskCell(taskMsg: "😉 Decirle a Julio que esto es una... pasada.😉")
            }
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Button {
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                            .foregroundColor(.white)
                    }
                }
                ToolbarItem(placement: .principal ){
                    Text("Task")
                        .bold()
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button {
                    } label: {
                        Image(systemName: "line.horizontal.3")
                            .foregroundColor(.white)
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.blue.opacity(0.8), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    NavigationStack{
        Ejercicio3()
    }
}
