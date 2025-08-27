//
//  AnimalRow.swift
//  AimantsAnimaux
//
//  Created by Jaouad on 27/08/2025.
//

import SwiftUI

// Represente la vue d'une ligne de la liste
struct AnimalRow: View {
    let animal: Animal
    
    var body: some View {
        HStack {
            Image(systemName: getImageName(breed: animal.breed))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .foregroundColor(Color.green)
                .frame(width: 40, height: 40)
                .padding(8)
            Text(animal.name)
                .bold()
            Spacer()
        }
    }
}


