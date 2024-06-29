//
//  BackgroundModifier.swift
//  FormExercise_Two
//
//  Created by AUNG KO LIN on 2024/06/18.
//

import SwiftUI


struct BackgroundModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            .background(Color("bg_color"))
        
    }
    
    
}

