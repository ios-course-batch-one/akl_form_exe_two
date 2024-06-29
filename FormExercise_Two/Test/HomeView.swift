//
//  HomeView.swift
//  FormExercise_Two
//
//  Created by AUNG KO LIN on 2024/06/10.
//

import SwiftUI

struct HomeView: View {
    @State private var textInput: String = " "
    var body: some View {
        NavigationStack{
            List{
                
                
                HStack (spacing :30){
                    Image(systemName: "house")
                    Text("Home")
                        .font(.title3 .bold())
                }
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .listStyle(.plain)
            
           
        }

        
    }
}

#Preview {
    HomeView()
}
