//
//  BaggedCoffee.swift
//  CoffeeApp
//
//  Created by Aubri McEachern on 10/12/26.
//

import SwiftUI

struct BaggedCoffee: View {
    
    @State var coffee:Coffee
    @State private var customerName: String = ""
    @State var showingSheet: Bool = false
    @State var specialRequest: String = ""
    @State var selectedExtras: Set<Extras> = []
    @Environment(Cart.self) private var cart
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    Text(coffee.description)
                        .frame(width: 160, height: 180)                     .font(.custom("Blender Bold Bold", size: 28))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Image(coffee.picture)
                        .resizable()
                        .scaledToFit()
                    
                }.background(
                    RoundedRectangle(cornerRadius: 0)
                        .fill(Color.black)
                        .opacity(0.1)
                )
                ZStack{
                    Text("\(coffee.name)")
                        .foregroundStyle(.white)
                        .font(.custom("Blender Bold Bold", size: 35))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(
                            Rectangle()
                                .fill(Color.primary)
                                .ignoresSafeArea(edges: .horizontal)
                        )
                    Text("$ \(coffee.price, specifier: "%.2f")")
                        .foregroundStyle(.white)
                        .font(.custom("Blender Medium Regular", size: 20))
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                
            
                Text("QUANTITY                         >")
                    .foregroundStyle(.black)
                    .font(.custom("Blender Bold Bold", size: 35))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .underline()
               
                HStack {
                    Stepper("", value: $coffee.quantity, in: 0...10)
                    Text("\(coffee.quantity)")
                } .padding()
                Divider()
                
                Text("NOTES:                             >")
                    .foregroundStyle(.black)
                    .font(.custom("Blender Bold Bold", size: 35))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .underline()
               
                
                TextField("Special requests?", text:
                $specialRequest)
                
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 15.0)
                        .stroke(.black, lineWidth: 1)
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 4)
                        .frame(height:80)
                    
                ) .padding()
                
                Button(action: {
                    updateOrder()
                    cart.add(coffee: coffee)
                    showingSheet.toggle()
                }) {
                    HStack (spacing: 40){
                        Text("ADD TO ORDER:")
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
            }// end of vstack
            .sheet(isPresented: $showingSheet) {
                CartView(customerName: customerName, specialRequest: specialRequest)
            }
        }
        func updateOrder() {
            if !specialRequest.isEmpty {
                coffee.specialRequest = specialRequest
            }
        }
    }


