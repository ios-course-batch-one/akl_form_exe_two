//
//  ToolbarBackIcon.swift
//  FormExercise_Two
//
//  Created by AUNG KO LIN on 2024/06/21.
//

import SwiftUI

struct ToolbarBackIcon: View {
    @Environment (\.dismiss) var dismiss

    var body: some View {
        VStack{
            Text("")
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.backward")
                            .imageScale(.medium)
                            .padding(.leading,4)
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 44, height: 44)
                    .background(
                        Circle())
                }
            })
           
        }
    }
}

#Preview {
    ToolbarBackIcon()
}
