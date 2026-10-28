//
//  CartTileView.swift
//  CoffeeApp
//
//  Created by Aubri McEachern on 10/5/26.
//
import Foundation
import SwiftUI

struct CartTileView: View {
    
    @Binding var coffee: Coffee
    
    // NEW: price for one of this item (base price + milk upcharge + extras)
    private var unitPrice: Double {
        coffee.calculatePrice()
    }
    
    // NEW: price for this line in the cart (unit price × quantity)
    private var lineTotal: Double {
        unitPrice * Double(coffee.quantity)
    }
    
    // NEW: the extras that were picked, in a consistent order
    private var chosenExtras: [Extras] {
        Extras.allCases.filter { coffee.extras.contains($0) }
    }
    
    var body: some View {
        // CHANGED: everything wrapped in one VStack so the stepper stays with its tile
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .top) {
                Image(coffee.assetName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 0))
                    .background(
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(.black, lineWidth: 2)
                            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 4)
                    )
                
                VStack(alignment: .leading, spacing: 4) {
                    // Name + line total on one row
                    HStack(alignment: .firstTextBaseline) {
                        Text(coffee.name)
                            .font(.custom("Blender Bold Bold", size: 26))
                            .minimumScaleFactor(0.5)
                            .lineLimit(2)
                        Spacer()
                        Text("$ \(lineTotal, specifier: "%.2f")")
                            .font(.custom("Blender Bold Bold", size: 24))
                    }
                    
                    // NEW: chosen options (drinks only — bagged coffee has none)
                    if coffee.isBeverage == .isBeverage {
                        detailRow("TEMP", coffee.temp.displayName)
                        detailRow("MILK", coffee.milk.displayName)
                        detailRow("ESPRESSO", coffee.espresso.displayName)
                        detailRow("SWEET", coffee.sweet.displayName)
                        
                        ForEach(chosenExtras) { extra in
                            Text("+ \(extra.displayName)")
                                .font(.custom("Blender Medium Regular", size: 16))
                        }
                    }
                    
                    // NEW: special request, if there is one
                    if !coffee.specialRequest.isEmpty {
                        Text("NOTE: \(coffee.specialRequest)")
                            .font(.custom("Blender Medium Regular", size: 16))
                            .italic()
                    }
                    
                    // NEW: price per item, only shown when buying more than one
                    if coffee.quantity > 1 {
                        Text("$ \(unitPrice, specifier: "%.2f") EACH")
                            .font(.custom("Blender Medium Regular", size: 16))
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .foregroundStyle(.black)
            
            Stepper("QTY: \(coffee.quantity)", value: $coffee.quantity, in: 1...10)
                .font(.custom("Blender Bold Bold", size: 20))
        }
        .padding(.horizontal)
    }
    
    // NEW: one "LABEL: VALUE" line
    private func detailRow(_ label: String, _ value: String) -> some View {
        HStack(spacing: 4) {
            Text("\(label):")
                .font(.custom("Blender Bold Bold", size: 16))
            Text(value)
                .font(.custom("Blender Medium Regular", size: 16))
        }
    }
}

#Preview {
    @Previewable @State var latte = Coffee(
        name: "LATTE", assetName: "latte", picture: "lattepicture",
        description: "", price: 6.25, milk: .oat, specialRequest: "Extra hot please",
        extras: [.triple], quantity: 2
    )
    CartTileView(coffee: $latte)
}
