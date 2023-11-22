//
//  TaskCell.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 22/11/23.
//

import SwiftUI

struct TaskCell: View {
    let taskMsg: String
    
    var body: some View {
        HStack{
            Button{ } label: {
                Image(systemName: "checkmark.circle")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.blue)
            }
            .frame(width: 50, height: 50)
            VStack(alignment: .leading){
                Text(taskMsg)
                    .font(.caption)
                Image(.volumeProgressBar!)
                    .resizable()
                    .scaledToFit()
            }
            .padding(.horizontal,5)
           
            Button{ } label: {
                Image(systemName: "plus.circle")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.blue)
            }
            .frame(width: 50, height: 50)
        }
    }
}

#Preview {
    TaskCell(taskMsg: "Sacaar a pasear el perro")
}
