//
//  SoundBar.swift
//  SwiftUI Ejercicios
//
//  Created by Jordi Sabrià Pagès on 21/11/23.
//

import SwiftUI

struct SoundBar: View {
    var body: some View {
        HStack{
            Image(systemName: "volume")
                
            Image(.musicProgressBar!)
                .resizable()
                .scaledToFit()
            Image(systemName: "volume.3")
        }
        .padding(.horizontal)
    }
}

#Preview {
    SoundBar()
}
