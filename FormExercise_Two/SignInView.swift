//
//  SignInView.swift
//  FormExercise_Two
//
//  Created by AUNG KO LIN on 2024/06/13.
//

import SwiftUI

struct SignInView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var ispwdMask: Bool = true
    @State private var isSignInPresented: Bool = false
    @State private var isRecoveryPresented: Bool = false

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
                    //MARK: -TEXTFIELD
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
                   
                    Button {
                       isRecoveryPresented = true
                    } label: {
                        HStack {
                            Spacer()
                            Text("Recovery Password")
                                    .font(.headline)
                                .foregroundStyle(Color("text_color"))
                        }.padding(.bottom,30)
                
                    }

                    
                    Button(action: {
                        isSignInPresented = true
                    }, label: {
                        ButtonView(titel: "Sign In")
                    })
                   .padding(.vertical)
                    
                    
                    Button(action: {
                    //google action
    
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
                    Text("Don't Have An Account?")
                        .foregroundStyle(.gray)
                    Button(action: {
                        // Action for Sign Up
                    }) {
                        Text("Sign Up For Free")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                }
                .padding(.bottom, 50)
                
            }
            .ignoresSafeArea()
            .background(Color("bg_color"))
            .navigationDestination(isPresented: $isSignInPresented) {
                SignUpView()
            }
            .navigationDestination(isPresented: $isRecoveryPresented){  ForgetPasswordView()
            }
            
        }//NavigationStack
    }
}

#Preview {
    NavigationStack{
        SignInView()
    }
}
