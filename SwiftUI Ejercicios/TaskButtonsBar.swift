//
//  TaskButtonsBar.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 22/11/23.
//

import SwiftUI

struct TaskButtonsBar: View {
    var body: some View {
        HStack{
            Button{

            } label: {
                Image(systemName: "xmark.circle")
                    .resizable()
                    .scaledToFit()
            }
            .frame(width: 50, height: 50)
            .padding(20)
            Spacer()
            Button{

            } label: {
                Image(systemName: "checkmark.circle")
                    .resizable()
                    .scaledToFit()
            }
            .frame(width: 50, height: 50)
            .padding(20)
            Spacer()
            Button{

            } label: {
                Image(systemName: "arrow.clockwise.circle")
                    .resizable()
                    .scaledToFit()
            }
            .frame(width: 50, height: 50)
            .padding(20)
        }
    }
}

#Preview {
    TaskButtonsBar()
}
