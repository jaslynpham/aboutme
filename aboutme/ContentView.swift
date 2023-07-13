//
//  ContentView.swift
//  aboutme
//
//  Created by scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isDogOnBeachButtonTapped = false
    @State private var isRestaurantButtonTapped = false
    @State private var isBeachThingsButtonTapped = false
    @State private var isSpeakNowCakeButtonTapped = false
    
    @State private var showAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    
    var body: some View {
        
        ZStack{
            Color("Color")
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20.0){
                
                VStack(alignment: .leading, spacing: 20.0) {
                    HStack { // Add HStack to hold the image and labels
                        Image("jaslyn")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(15)
                            .padding()
                            .background(Rectangle().foregroundColor(.white))
                            .cornerRadius(15)
                            .shadow(radius: 15)
                            .padding()
                        
                        VStack(alignment: .leading) { // Align the labels to the leading (left) side
                            Text("Jaslyn Pham")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding()
                                .background(Rectangle().foregroundColor(.white))
                                .cornerRadius(15)
                                .shadow(radius: 15)
                                .padding()
                            
                            Text("A person")
                                .padding()
                                .background(Rectangle().foregroundColor(.white))
                                .cornerRadius(15)
                                .shadow(radius: 15)
                                .padding()
                        }
                    }
                    
                }
                HStack{
                    Image("blueheart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding()
                    
                    Image("blueheart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding()
                    Image("blueheart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding()
                    
                    Image("blueheart")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(15)
                        .padding()
                    
                    
                        VStack(alignment: .leading, spacing: 20.0) {
                            HStack {
                                Button(action: {
                                    showAlert = true
                                    alertTitle = "Dog on Beach"
                                    alertMessage = "I have a golden retriever named Luckie."
                                }) {
                                    Image("dogonbeach")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(15)
                                        .padding()
                                        .background(Rectangle().foregroundColor(.white))
                                        .cornerRadius(15)
                                        .shadow(radius: 15)
                                        .padding()
                                }
                            }
                            .alert(isPresented: $showAlert) {
                                Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
                            }
                            
                            // Repeat the same pattern for the other buttons
                            
                            // Rest of your code...
                            
                            // Rest of your code...
                            HStack {
                                Button(action: {
                                    showAlert = true
                                    alertTitle = "Restaurant"
                                    alertMessage = "This is a restaurant."
                                }) {
                                    Image("resturant")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(15)
                                        .padding()
                                        .background(Rectangle().foregroundColor(.white))
                                        .cornerRadius(15)
                                        .shadow(radius: 15)
                                        .padding()
                                }
                            }
                            .alert(isPresented: $showAlert) {
                                Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
                            }
                            
                            HStack {
                                Button(action: {
                                    showAlert = true
                                    alertTitle = "Beach Things"
                                    alertMessage = "These are beach-related things."
                                }) {
                                    Image("beachthings")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(15)
                                        .padding()
                                        .background(Rectangle().foregroundColor(.white))
                                        .cornerRadius(15)
                                        .shadow(radius: 15)
                                        .padding()
                                }
                            }
                            .alert(isPresented: $showAlert) {
                                Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
                            }
                            
                            HStack {
                                Button(action: {
                                    showAlert = true
                                    alertTitle = "Speak Now Cake"
                                    alertMessage = "This is a Speak Now Cake."
                                }) {
                                    Image("speaknowcake")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(15)
                                        .padding()
                                        .background(Rectangle().foregroundColor(.white))
                                        .cornerRadius(15)
                                        .shadow(radius: 15)
                                        .padding()
                                }
                            }
                            .alert(isPresented: $showAlert) {
                                Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
                            }
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 20.0) {
                        HStack {
                            
                            Image("dogonbeach")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(15)
                                .padding()
                                .background(Rectangle().foregroundColor(.white))
                                .cornerRadius(15)
                                .shadow(radius: 15)
                                .padding()
                        }
                        if isDogOnBeachButtonTapped {
                            Text("I have a golden retriever named Luckie.")
                                .padding()
                                .background(Rectangle().foregroundColor(.white))
                                .cornerRadius(15)
                                .shadow(radius: 15)
                                .padding()
                        }
                        
                        HStack {
                            Button(action: {
                                isRestaurantButtonTapped.toggle()
                            }) {
                                Image("resturant")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(15)
                                    .padding()
                                    .background(Rectangle().foregroundColor(.white))
                                    .cornerRadius(15)
                                    .shadow(radius: 15)
                                    .padding()
                            }
                            if isRestaurantButtonTapped {
                                Text("Restaurant")
                                    .padding()
                                    .background(Rectangle().foregroundColor(.white))
                                    .cornerRadius(15)
                                    .shadow(radius: 15)
                                    .padding()
                            }
                        }
                        
                        HStack {
                            Button(action: {
                                isBeachThingsButtonTapped.toggle()
                            }) {
                                Image("beachthings")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(15)
                                    .padding()
                                    .background(Rectangle().foregroundColor(.white))
                                    .cornerRadius(15)
                                    .shadow(radius: 15)
                                    .padding()
                            }
                            if isBeachThingsButtonTapped {
                                Text("Beach Things")
                                    .padding()
                                    .background(Rectangle().foregroundColor(.white))
                                    .cornerRadius(15)
                                    .shadow(radius: 15)
                                    .padding()
                            }
                        }
                        
                        HStack {
                            Button(action: {
                                isSpeakNowCakeButtonTapped.toggle()
                            }) {
                                Image("speaknowcake")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(15)
                                    .padding()
                                    .background(Rectangle().foregroundColor(.white))
                                    .cornerRadius(15)
                                    .shadow(radius: 15)
                                    .padding()
                            }
                            if isSpeakNowCakeButtonTapped {
                                Text("Speak Now Cake")
                                    .padding()
                                    .background(Rectangle().foregroundColor(.white))
                                    .cornerRadius(15)
                                    .shadow(radius: 15)
                                    .padding()
                            }
                        }
                    }
                }
                
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    

