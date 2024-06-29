//
//  ButtonView.swift
//  FormExercise_Two
//
//  Created by AUNG KO LIN on 2024/06/21.
//

import SwiftUI

struct ButtonView: View {
    let titel: String
    var body: some View {
        Button {
            //action
        } label: {
            Text(titel)
                .foregroundStyle(.white)
                .font(.system(size: 18) .bold())
        }
        .frame(maxWidth: .infinity,maxHeight: 54)
        .background(
            Capsule()
                .foregroundColor(Color("btn_color"))
            //        .padding()
                .background(Color("bg_color"))
            
    )}
}

#Preview {
        ButtonView(titel: "Sign In")

}
