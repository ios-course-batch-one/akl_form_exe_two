//
//  TextFieldTitle.swift
//  FormExercise_Two
//
//  Created by AUNG KO LIN on 2024/06/21.
//

import SwiftUI

struct TextFieldTitle: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.headline)
            .foregroundStyle(.white)
            
    }
}

#Preview {
    TextFieldTitle(title: "simple title")
}
