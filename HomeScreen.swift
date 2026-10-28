//
//  HomeScreen.swift
//  CoffeeApp
//
//  Created by Aubri McEachern on 10/6/26.
//
import Foundation
import SwiftUI

struct HomeScreen: View {
    
    var body: some View {
        
        VStack {
            NavigationStack {
                VStack {
                    Image("madcapLogo")
                        .resizable()        // 1. Allows the image to be resized
                        .scaledToFit()       // 2. Maintains aspect ratio without stretching
                        .frame(height: 80)   // 3. Adjust this height to match your design
                        .padding(.top)
                    HStack {
                        Text("ETHICAL COFFEE FROM SEED TO CUP")
                            .frame(width: 160, height: 180)                     .font(.custom("Blender Bold Bold", size: 28))
                            .multilineTextAlignment(.center)
                            .padding()
                        Image("coffeePlant")
                            .resizable()
                            .scaledToFit()
                         
                        
                    }.background(
                        RoundedRectangle(cornerRadius: 0)
                            .fill(Color.black)
                            .opacity(0.1)
                    )
                }//end of hstack
                .padding(.vertical)
                VStack (spacing: 10) {
                    NavigationLink(destination: ContentView()) {
                        Text("PLACE AN ORDER")
                            .font(.custom("Blender Bold Bold", size: 40))
                            .foregroundStyle(.black)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(
                                RoundedRectangle(cornerRadius: 0)
                                    .stroke(.black, lineWidth: 2)
                                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 4)
                            )
                        
                    }
                    .buttonStyle(.plain)
                    .padding(.horizontal)
                    
                    NavigationLink(destination: SubscriptionView()) {
                        Text("SUBSCRIPTION")
                            .font(.custom("Blender Bold Bold", size: 40))
                            .foregroundStyle(.black)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(
                                RoundedRectangle(cornerRadius: 0)
                                    .stroke(.black, lineWidth: 2)
                                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 4)
                            )
                        
                    }
                    .buttonStyle(.plain)
                    .padding(.horizontal)
                    
                    Button(action: {
                    }) {
                        Text("FIND A LOCATION")
                            .font(.custom("Blender Bold Bold", size: 40))
                            .foregroundStyle(.black)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(
                                RoundedRectangle(cornerRadius: 0)
                                    .stroke(.black, lineWidth: 2)
                                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 4)
                            )
                    }
                    .buttonStyle(.plain)
                    .padding(.horizontal)
                    
                    Button(action: {
                    }) {
                        Text("VIEW ACCOUNT")
                            .font(.custom("Blender Bold Bold", size: 40))
                            .foregroundStyle(.black)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(
                                RoundedRectangle(cornerRadius: 0)
                                    .stroke(.black, lineWidth: 2)
                                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 4)
                            )
                    }
                    .buttonStyle(.plain)
                    .padding(.horizontal)
                    
                }
                
                Text("Transforming daily ritual into elevated experience")
                    .font(.custom("Blender Medium Regular", size: 20))
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 0)
                            .fill(Color.black)
                            .opacity(0.1)
                    )
            }
            }
        }
    }

#Preview {
    HomeScreen()
        .environment(Cart())
}
