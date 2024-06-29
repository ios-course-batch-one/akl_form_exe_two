//
//  ContentView.swift
//  FormExercise_Two
//
//  Created by AUNG KO LIN on 2024/06/10.
//
//
import SwiftUI



struct ContentView: View {

    let shoes: [Shoe] = [

        .init(name: "shoe1", title: "Start Journey \n With Nike", body:"Smart, Gorgeous & Fashionable \n Collection"),

        .init(name: "shoe2", title: "Follow Latest \n Style Shoes", body: "There Are Many Beautiful And \n Attractive Plants To Your Room"),

        .init(name: "shoe3", title: "Summer Shoes \n Nike 2022", body: "Amet Minim Lit Nodoseru Saku \n Nendu sit Alique Dokor")

    ]

    @State private var isLoginPresented: Bool = false



    @State private var currentpageIndex: Int = 0

    var body: some View {

        NavigationStack{

            VStack(){

                TabView(selection:$currentpageIndex){

                    ForEach(0..<shoes.count, id: \.self) { index in

                        let shoe = shoes[index]

                        OnbordingView(onbordingScreens: shoe)

                            .tag(index)

                    }

                }

                .padding()

                .tabViewStyle(.page(indexDisplayMode: .always))

                .indexViewStyle(.page(backgroundDisplayMode: .always))

                .background(Color.secondary)

                .overlay(alignment: .bottomTrailing) {

                    Button(action: {

                        //check if current page index is last index

                        if currentpageIndex == shoes.count - 1 {

                            isLoginPresented = true

                        } else {

                            currentpageIndex += 1

                           

                        }

                    }, label: {

                        if(currentpageIndex==0){

                            Text("Get Start")

                        }else {

                            Text("Next")

                        }

                       

                    })

                    .foregroundColor(.white)

                    .frame(width: 100, height: 15)

                    .padding()

                    .background(

                        Capsule()

                            .frame(width: 110)

                            .foregroundColor(Color("btn_color"))

                    )

                    .padding(.bottom,20)

                }

                .background(Color("bg_color"))

            }

            .modifier(BackgroundModifier())

            .navigationDestination(isPresented: $isLoginPresented){

                SignInView()

            }

        }

    }

}



#Preview {

    ContentView()

}
