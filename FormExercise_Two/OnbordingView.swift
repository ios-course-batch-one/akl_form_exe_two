//
//  OnbordingView.swift
//  FormExercise_Two
//
//  Created by AUNG KO LIN on 2024/06/27.
//

import SwiftUI

struct OnbordingView: View {
    let onbordingScreens : Shoe
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            Image(onbordingScreens.name)
                .padding()
            Text(onbordingScreens.title)
                .font(.system(size: 40) .bold())
                .foregroundStyle(.white)
                .padding()
            Text(onbordingScreens.body)
                .font(.system(size: 20))
                .foregroundStyle(Color("text_color"))
                .padding()
        }
    }
}

#Preview {
    OnbordingView(onbordingScreens: .init(name: "shoe1", title: "Start Journey \n With Nike", body:"Smart, Gorgeous & Fashionable \n Collection"))
}
