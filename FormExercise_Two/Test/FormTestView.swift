//
//  FormTestView.swift
//  FormExercise_Two
//
//  Created by AUNG KO LIN on 2024/06/10.
//

import SwiftUI

struct FormTestView: View {
    @State private var username: String = " "
    @State private var password: String=" "
    @State private var isPasswordMask: Bool = true
    @State private var isPresented: Bool = false
    
    
    
    var body: some View {
        NavigationStack {
            VStack(alignment:.leading) {
                Text("Username")
                TextField("Username", text: $username)
                    .textContentType(.creditCardName)
                    .modifier(CustonTextFieldModi())
                
                Text("Password")
                Group{
                    if isPasswordMask{
                        TextField("Password", text: $password)
                    }else{
                        SecureField("Password", text: $password)
                    }
                }
                .modifier(CustonTextFieldModi())
                .overlay(alignment: .trailing) {
                    Button{
                        isPasswordMask.toggle()
                    }label: {
                        Image(systemName: isPasswordMask ? "eye" : "eye.slash")
                    }
                    .padding(.horizontal)
                }
                
                
                Button{
                    isPresented = true
                } label: {
                    Text("Login")
                Image(systemName: "arrow.forward")
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .buttonStyle(BorderedButtonStyle())
                
                
                
            }.padding()
                .navigationTitle("Hello\(username)")
            
                .alert("You Successfully", isPresented: $isPresented, actions: {
                    
                }, message: {
                    
                })
            
            
        }
        
    }
}

#Preview {
    FormTestView()
}

struct CustonTextFieldModi: ViewModifier{
    func body (content: Content) ->some View{
        content
            .tint(.black)
            .padding(.horizontal)
            .frame(height: 44)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.primary).opacity(0.3))
    }
}
