//
//  SubscriptionView.swift
//  CoffeeApp
//
//  Created by Aubri McEachern on 10/12/26.
//

import SwiftUI
import Playgrounds

struct SubscriptionView: View {
    var body : some View {
        ZStack(alignment: .bottom) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 25) { // Keeps spacing uniform between sections
                    
                    VStack {
                        VStack {
                            
                            Text("YOUR SUBSCRIPTION")
                                .foregroundStyle(.white)
                                .font(.custom("Blender Bold Bold", size: 35))
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(
                                    Rectangle()
                                        .frame(maxWidth: .infinity)
                                        .ignoresSafeArea(edges: .horizontal)
                                )
                            
                            
                            Image("CoffeePack")
                            
                                .resizable()
                                .scaledToFit()
                            
                            Text("Your address: 123 Farmer St Apt 4, Detroit, MI 48226")
                                .frame(height: 30)                     .font(.custom("Blender Bold Bold", size: 20))
                                .multilineTextAlignment(.center)
                            
                            
                        }.background(
                            RoundedRectangle(cornerRadius: 0)
                                .fill(Color.black)
                                .opacity(0.1)
                        )
                        .frame(maxWidth: .infinity)
                        
                        HStack {
                            Text("Your chosen flavor: DAY DREAM")
                                .frame(width: 160, height: 180)                     .font(.custom("Blender Bold Bold", size: 28))
                                .multilineTextAlignment(.center)
                                .padding()
                            
                            Image("daydreamPicture")
                                .resizable()
                                .scaledToFit()
                            
                        }.background(
                            RoundedRectangle(cornerRadius: 0)
                                .fill(Color.black)
                                .opacity(0.1)
                        )
                        
                        Text("Your next delivery of fresh coffee:")
                            .frame(height: 30)
                            .font(.custom("Blender Medium Regular", size: 25))
                            .multilineTextAlignment(.center)
                        
                        Text("November 21st")
                            .frame(height: 50)
                            .font(.custom("Blender Bold Bold", size: 40))
                            .multilineTextAlignment(.center)
                            .background(
                                RoundedRectangle(cornerRadius: 0)
                                    .fill(Color.black)
                                    .opacity(0.1)
                            )
                            .frame(maxWidth: .infinity)
                        
                        Text("Status: Shipped for Delivery")
                            .frame(height: 30)
                            .font(.custom("Blender Medium Regular", size: 25))
                            .multilineTextAlignment(.center)
                        
                        HStack {
                            Button(action: {
                            }) {
                                Text("EDIT MY ORDER")
                                    .font(.custom("Blender Bold Bold", size: 23))
                                    .foregroundStyle(.black)
                                    .frame(maxWidth: .infinity)
                                    .background(
                                        RoundedRectangle(cornerRadius: 0)
                                            .stroke(.black, lineWidth: 2)
                                            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 4)
                                    )
                            }
                            .buttonStyle(.plain)
                            
                            Button(action: {
                            }) {
                                Text("EDIT ADDRESS")
                                    .font(.custom("Blender Bold Bold", size: 23))
                                    .foregroundStyle(.black)
                                    .frame(maxWidth: .infinity)
                                    .background(
                                        RoundedRectangle(cornerRadius: 0)
                                            .stroke(.black, lineWidth: 2)
                                            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 4)
                                    )
                            }
                            .buttonStyle(.plain)
                        } .padding(.horizontal)
                            
                            Button(action: {
                            }) {
                                Text("CANCEL SUBSCRIPTION")
                                    .font(.custom("Blender Bold Bold", size: 30))
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
                }
            }
        }
    }
}
