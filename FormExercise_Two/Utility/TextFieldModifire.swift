//
//  TextFieldModifire.swift
//  FormExercise_Two
//
//  Created by AUNG KO LIN on 2024/06/21.
//

import SwiftUI

struct TextFieldModifire: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundColor(.white)
            .tint(.white)
            .frame(height: 48)
            .background(
                Capsule()
                    .foregroundColor(.gray))
    }
}
