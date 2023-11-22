//
//  TaskBigButtonsBar.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 22/11/23.
//

import SwiftUI

struct TaskBigButtonsBar: View {
    var body: some View {
        HStack{
            Button {
                
            } label: {
                Text("Home")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background {
                        Color.gray.opacity(0.1)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    
            }
            .padding(.leading, 20)
            Spacer()
            Button {
                
            } label: {
                Text("Task")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background {
                        Color.blue.opacity(0.8)
                    }
                    .tint(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
            }
            .padding(.trailing, 20)
        }
    }
}

#Preview {
    TaskBigButtonsBar()
}
