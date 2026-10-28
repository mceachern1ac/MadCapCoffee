//
//  CartView.swift
//  CoffeeApp
//
//  Created by Aubri McEachern on 10/2/26.
//
import SwiftUI

struct CartView: View {
    
    @Environment(Cart.self) private var cart
    var customerName: String = ""
    var specialRequest: String? = nil
    @State var showingSheet: Bool = false
    @State private var quantity = 1
    @State private var isShowingCart = false
    
    var body: some View {
        @Bindable var cart = cart
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Text("YOUR PICKUP ORDER").multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                        .font(.custom("Blender Bold Bold", size: 50))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                        .background(
                            Rectangle()
                                .fill(Color.primary)
                                .ignoresSafeArea(edges: .horizontal)
                        )
                    
                    VStack {
                                            ForEach($cart.items) { $item in
                                                CartTileView(coffee: $item)
                                                Divider()
                                                    .frame(height: 1)
                                                    .overlay(Color.black)
                                                    .shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 4)
                                                    .padding(.horizontal)
                                                    .padding()
                                            }
                                            HStack(spacing: 120){
                                                Text("SUBTOTAL")
                                                    .frame(alignment: .leading)
                                                    .font(.custom("Blender Bold Bold", size: 30))
                                                
                                                Text("$ \(cart.subtotal, specifier: "%.2f")")
                                                    .frame(alignment: .trailing)
                                                    .font(.custom("Blender Bold Bold", size: 30))
                                            }// end of subtotal hstack
                                            .padding()
                                            Divider()
                                                .frame(height: 1)
                                                .overlay(Color.black)
                                                .shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 4)
                                                .padding(.horizontal)
                                            HStack(spacing: 200){
                                                Text("TAX")
                                                    .frame(alignment: .leading)
                                                    .font(.custom("Blender Bold Bold", size: 30))
                                                
                                                Text("$ \(cart.tax, specifier: "%.2f")")
                                                    .frame(alignment: .trailing)
                                                    .font(.custom("Blender Bold Bold", size: 30))
                                            }// end of tax hstack
                                            
                                            
                                        } // end of v stack
                    NavigationLink {
                        OrderConfirmationView()
                    } label: {
                        HStack (spacing: 40){
                            Text("CHECKOUT")
                                .font(.custom("Blender Medium Regular", size: 30))
                            
                            Text("$ \(cart.total, specifier: "%.2f")")
                                .frame(alignment: .trailing)
                                .font(.custom("Blender Bold Bold", size: 30))
                        }
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .background(Capsule().fill(Color.black))
                    }
                    .buttonStyle(.plain)
                    .padding(.horizontal)
                }
            }
        }
            }
                } // end of v stack
               // .sheet(isPresented: $isShowingCart) {
                  //  OrderConfirmationView(coffee:Coffee(name: "Latte", assetName: "latte"), customerName: "Stonky", specialRequest: "")
               // } // end of VSTACK
                
                
                /* Text("Hey \(customerName)! You ordered a \(coffee.name) drink, \(coffee.temp) with \(coffee.milk.rawValue) milk, \(coffee.espresso) espresso, and \(coffee.sweet) sugar.")
                 Text("The price is \(coffee.calculatePrice(), specifier: "%.2f")")
                 if let specialRequest = specialRequest, !specialRequest.isEmpty {
                 Text("Special Request: \(specialRequest)")*/
                // }
           // }

#Preview {
    CartView()
        .environment(Cart())
}
