//
//  PlayBar.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 21/11/23.
//

import SwiftUI

struct PlayBar: View {
    var body: some View {
        HStack{
            VStack{
                Button{
                } label: {
                    Image(systemName: "backward")
                        .padding()
                }
                .buttonStyle(.miBoton)
                .buttonBorderShape(.circle)
                Text("Backward")
                    .font(.subheadline)
            }
            Spacer()
            VStack{
                Button{
                } label: {
                    Image(systemName: "play")
                        .padding()
                }
                .buttonStyle(.miBoton)
                .buttonBorderShape(.circle)
                Text("Play")
                    .font(.subheadline)
            }
            Spacer()
            VStack{
                Button{
                } label: {
                    Image(systemName: "forward")
                        .padding()
                }
                .buttonStyle(.miBoton)
                .buttonBorderShape(.circle)
                Text("Forward")
                    .font(.subheadline)
            }
        }
        .padding(20)
    }
}

#Preview {
    PlayBar()
}
