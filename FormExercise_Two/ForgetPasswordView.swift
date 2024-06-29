//
//  ForgetPasswordView.swift
//  FormExercise_Two
//
//  Created by AUNG KO LIN on 2024/06/13.
//

import SwiftUI

struct ForgetPasswordView: View {
    @State private var email: String = ""
    var body: some View {
        
        NavigationStack {
            VStack{
                VStack(spacing: 10){
                    Text("Recovery Password")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                    Text("Please Enter Your Email Address To \nRecieve a Verification Code")
                        .font(.subheadline)
                        .foregroundColor(Color("text_color"))
                    Spacer().frame(height: 50)
                }
               .multilineTextAlignment(.center)
                
                //MARK: -TEXTFIELD
                VStack(alignment:.leading, spacing: 20){
                    TextFieldTitle(title: "Email Address")
                    TextField("Enter email Address", text: $email)
                        .modifier(TextFieldModifire())
                       
                }
                //MARK: -BUTTON
                ButtonView(titel: "Continue")
                    .padding(.vertical)
            }
            .toolbar(content: {
                ToolbarBackIcon()
            })
            .navigationBarBackButtonHidden()
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
        .background(Color("bg_color"))
        }
    }
}

#Preview {
    ForgetPasswordView()
}
