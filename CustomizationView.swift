//
//  CustomizationView.swift
//  MyApp
//
//  Created by Aubri McEachern on 9/24/26.
//

import SwiftUI

struct CustomizationView: View {
    
    @State var coffee: Coffee
    @State private var customerName: String = ""
    @State var showingSheet: Bool = false
    @State var specialRequest: String = ""
    @Environment(Cart.self) private var cart
    
    // NEW (3b): live price for this item — updates whenever milk, extras, or quantity change
    private var itemTotal: Double {
        coffee.calculatePrice() * Double(coffee.quantity)
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    Text(coffee.description)
                        .frame(width: 160, height: 180)
                        .font(.custom("Blender Bold Bold", size: 20))
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
                VStack {
                    Text("\(coffee.name)")
                        .foregroundStyle(.white)
                        .font(.custom("Blender Bold Bold", size: 40))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Starts at $ \(coffee.price, specifier: "%.2f")")
                        .foregroundStyle(.white)
                        .font(.custom("Blender Medium Regular", size: 25))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                } .background(
                    Rectangle()
                        .fill(Color.primary)
                        .ignoresSafeArea(edges: .horizontal)
                )
                
                Text("AVAILABLE HOT OR ICED")
                    .foregroundStyle(.primary)
                    .font(.custom("Blender Medium Regular", size: 30))
                Text("MILK OPTIONS                  >")
                    .foregroundStyle(.primary)
                    .font(.custom("Blender Bold Bold", size: 35))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .underline()
                
                PillSegmentedControl(options: Milk.allCases, labels: { $0.displayName }, selection: $coffee.milk)
                    .padding(.horizontal)
                
                Text("TEMPERATURE                 >")
                    .foregroundStyle(.black)
                    .font(.custom("Blender Bold Bold", size: 35))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .underline()
                
                PillSegmentedControl(options: Temp.allCases, labels: { $0.displayName }, selection: $coffee.temp)
                    .padding(.horizontal)
                
                Text("SWEET OPTIONS              >")
                    .foregroundStyle(.black)
                    .font(.custom("Blender Bold Bold", size: 35))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .underline()
                
                PillSegmentedControl(options: Sweet.allCases, labels: { $0.displayName }, selection: $coffee.sweet)
                    .padding(.horizontal)
                
                Text("ESPRESSO                       >")
                    .foregroundStyle(.black)
                    .font(.custom("Blender Bold Bold", size: 35))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .underline()
                
                PillSegmentedControl(options: Espresso.allCases, labels: { $0.displayName }, selection: $coffee.espresso)
                    .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("EXTRAS                            >")
                        .foregroundStyle(.black)
                        .font(.custom("Blender Bold Bold", size: 35))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .underline()
                    
                    ForEach(Extras.allCases) { extra in
                        VStack(spacing: 8) {
                            HStack {
                                VStack(alignment: .leading, spacing: 2) {
                                    Text(extra.displayName.uppercased())
                                        .font(.custom("Blender Bold Bold", size: 20))
                                    Text("+ $\(extra.basePrice, specifier: "%.2f")")
                                        .font(.custom("Blender Medium Regular", size: 20))
                                }
                                Spacer()
                                // CHANGED (3a): reads from coffee.extras
                                Image(systemName: coffee.extras.contains(extra) ? "checkmark.square" : "square")
                                    .font(.system(size: 24))
                            }
                            Divider()
                        }
                        .padding(.horizontal)
                        .contentShape(Rectangle())
                        // CHANGED (3a): writes to coffee.extras
                        .onTapGesture {
                            if coffee.extras.contains(extra) {
                                coffee.extras.remove(extra)
                            } else {
                                coffee.extras.insert(extra)
                            }
                        }
                    }
                }
                
                Text("QUANTITY                         >")
                    .foregroundStyle(.black)
                    .font(.custom("Blender Bold Bold", size: 35))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .underline()
                
                HStack {
                    // CHANGED (3c): minimum quantity is 1
                    Stepper("", value: $coffee.quantity, in: 1...10)
                    Text("\(coffee.quantity)")
                } .padding()
                Divider()
                
                Text("NOTES:                             >")
                    .foregroundStyle(.black)
                    .font(.custom("Blender Bold Bold", size: 35))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .underline()
                
                TextField("Special requests?", text: $specialRequest)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 15.0)
                            .stroke(.black, lineWidth: 1)
                            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 4)
                            .frame(height: 80)
                    )
                    .padding()
                
                // (the old ADD TO ORDER button used to be here — it moved below)
            } // end of VStack
        } // end of ScrollView
        // NEW (3d): sticky button pinned to the bottom of the screen
        .safeAreaInset(edge: .bottom) {
            Button(action: {
                updateOrder()
                cart.add(coffee: coffee)
                showingSheet.toggle()
            }) {
                HStack(spacing: 40) {
                    Text("ADD TO ORDER:")
                        .font(.custom("Blender Medium Regular", size: 30))
                    Text("$ \(itemTotal, specifier: "%.2f")")
                        .font(.custom("Blender Bold Bold", size: 30))
                        .contentTransition(.numericText())
                        .animation(.default, value: itemTotal)
                }
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 10)
                .background(Capsule().fill(Color.black))
            }
            .buttonStyle(.plain)
            .padding(.horizontal)
            .padding(.top, 8)
            .background(.bar)
        }
        .sheet(isPresented: $showingSheet) {
            CartView(customerName: customerName, specialRequest: specialRequest)
        }
    } // end of body
    
    func updateOrder() {
        if !specialRequest.isEmpty {
            coffee.specialRequest = specialRequest
        }
    }
}

#Preview {
    CustomizationView(coffee: Coffee(name: "LATTE", assetName: "latte", picture: "lattepicture", description: "latte", price: 6.25), specialRequest: "")
        .environment(Cart())
}
