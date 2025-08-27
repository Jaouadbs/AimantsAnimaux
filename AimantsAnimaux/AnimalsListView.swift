//
//  AnimalsListView.swift
//  AimantsAnimaux
//
//  Created by Jaouad on 27/08/2025.
//

import SwiftUI


// Affiche la liste des animaux
struct AnimalsListView: View {
    @State private var showingAdd = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("aimantsDanimauxBan")
                    .resizable()
                    .background(.clear)
                    .frame(height: 130)
                    .aspectRatio(contentMode: .fit)
                
                List(animalList, id: \.name) { animal in
                    NavigationLink {
                        AnimalDetailView(animal: animal)
                    } label: {
                        AnimalRow(animal: animal)
                    }
                }
                .navigationTitle("Liste des animaux")
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        NavigationLink {
                            AddNewAnimalView()
                        } label : {
                            Text("Ajouter")
                        }
                    }
                }
            }
        }
        
    }
}
