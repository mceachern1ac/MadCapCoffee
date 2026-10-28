//
//  OrderConfirmationView.swift
//  MyApp
//
//  Created by Aubri McEachern on 9/24/26.
//
import SwiftUI

struct OrderConfirmationView: View {
    
    @State private var isShowingCart = false
    @Environment(Cart.self) private var cart
    
    var body: some View {
        VStack {
            Image("madcapLogo")
            Text("ORDER PLACED")
                .foregroundStyle(.white)
                .font(.custom("Blender Bold Bold", size: 45))
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    Rectangle()
                        .fill(Color.primary)
                        .ignoresSafeArea(edges: .horizontal)
                )
            Text("THANK YOU!")
                .foregroundStyle(.white)
                .font(.custom("Blender Bold Bold", size: 30))
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    Rectangle()
                        .fill(Color.primary)
                )
            
            Image("coffeegroup")
                .resizable()
                .scaledToFit()
            
            Text("Your total is:")
                .foregroundStyle(.black)
                .font(.custom("Blender Medium Regular", size: 35))
                .frame(maxWidth: .infinity)
            Divider()
            Text("$ \(cart.total, specifier: "%.2f")")
                .foregroundStyle(.black)
                .font(.custom("Blender Bold Bold", size: 35))
                .frame(maxWidth: .infinity)
            Divider()
                .frame(height: 3)
                .overlay(Color.black)
                .shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 4)
                .padding()
            
            Text("Your wait time is:")
                .foregroundStyle(.black)
                .font(.custom("Blender Medium Regular", size: 35))
                .frame(maxWidth: .infinity)
            Divider()
            Text("15 Minutes")
                .foregroundStyle(.black)
                .font(.custom("Blender Bold Bold", size: 35))
                .frame(maxWidth: .infinity)
            
            /*Text("Hey \(customerName)! You ordered a \(coffee.name) drink, \(coffee.temp) with \(coffee.milk.rawValue) milk, \(coffee.espresso) espresso, and \(coffee.sweet) sugar.")
            Text("The price is \(coffee.calculatePrice(), specifier: "%.2f")")
            if let specialRequest = specialRequest, !specialRequest.isEmpty {
                Text("Special Request: \(specialRequest)")
            } */
            
            Button(action: {
                isShowingCart = true
            }) {
                Text("REVIEW ORDER")
                    .font(.custom("Blender Bold Bold", size: 18))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 10)
                    .background(Capsule().fill(Color.black))
            }
            .buttonStyle(.plain)
            .padding(.horizontal)
        } // end of v stack
        .sheet(isPresented: $isShowingCart) {
            CartView()
        }
    }
}

#Preview {
    OrderConfirmationView()
        .environment(Cart())
}
