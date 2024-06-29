//
//  SignUpView.swift
//  FormExercise_Two
//
//  Created by AUNG KO LIN on 2024/06/13.
//

import SwiftUI

struct SignUpView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var ispwdMask: Bool = true
    var body: some View {
        NavigationStack{
            Section {
                //
            } header: {
                VStack{
                    VStack{
                        Text("Hello Again!")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        Text("Welcome Back You've Been Missed!")
                            .font(.subheadline)
                            .foregroundColor(Color("text_color"))
                        Spacer().frame(height: 50)
                    }
                    VStack(alignment:.leading, spacing: 20){
                        TextFieldTitle(title: "Your Name")
                        TextField("Name", text: $name)
                            .modifier(TextFieldModifire())
                    }
                    
                    
                    VStack(alignment:.leading, spacing: 20){
                        TextFieldTitle(title: "Email Address")
                        TextField("Enter email Address", text: $email)
                            .modifier(TextFieldModifire())
                    }
                    VStack(alignment:.leading, spacing: 10){
                        TextFieldTitle(title: "Password")
                        Group{
                            if ispwdMask{
                                SecureField("Enter Your Password", text: $password)
                            }else{
                                TextField("Enter Your Password", text: $password)
                            }
                        }
                        .modifier(TextFieldModifire())
                        .overlay(alignment: .trailing) {
                            Button {
                                ispwdMask.toggle()
                            } label: {
                                Image(systemName: ispwdMask ? "eye" : "eye.slash")
                            }
                            .padding()
                            .tint(.white)
                        }
                    }
                  
                    ButtonView(titel: "Sign In")
                        .padding(.vertical)
                    
                    Button(action: {
                        // Action for Sign in with Google
                    })
                    {
                        HStack {
                            Image("google_img")
                            
                            Text("Sign in with Google")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            Capsule())
                        .foregroundColor(Color("btn_color2"))
                    }
                }//VStack
                .padding(.horizontal, 20)
                .modifier(BackgroundModifier())
                .navigationBarBackButtonHidden()
                .toolbar(content: {
                    ToolbarBackIcon()
                })
                
            } footer: {
                HStack {
                    Text("Already have an account?")
                        .foregroundStyle(.gray)
                    Button(action: {
                        // Action for Sign Up
                    }) {
                        Text("Sign In")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                }
                .padding(.bottom, 50)
                
            }
            .ignoresSafeArea()
            .background(Color("bg_color"))
            
            
        }//NavigationStack
    }
}

#Preview {
    NavigationStack{
        SignUpView()
    }
}
