//
//  Untitled.swift
//  MyApp
//
//  Created by Aubri McEachern on 9/24/26.
//
import SwiftUI

struct CoffeeTileView: View {
    var coffee: Coffee
    var body: some View {
        VStack {
            VStack(spacing: 0) {
                ZStack {
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(.black, lineWidth: 2)
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 4)
                    Image(coffee.assetName)
                        .resizable()
                        .frame(width: 150, height: 150)
                        .scaledToFit()
                        //.clipShape(RoundedRectangle(cornerRadius: 25))
                }

            }
            .background(
            )
            .foregroundStyle(.black)
            Text(coffee.name)
               // .minimumScaleFactor(0.5)
                .fixedSize(horizontal: false, vertical: true)
                .frame(width: 150, height: 30)
                .foregroundStyle(.black)
                .font(.custom("Blender Bold Bold", size: 20))
            Text("$ \(coffee.price, specifier: "%.2f")")
                .minimumScaleFactor(0.5)
                .frame(width: 100, height: 20
                )
                .foregroundStyle(.black)
                .font(.custom("Blender Medium Regular", size: 40))

        }.scaledToFit()
    }
}

#Preview {
    let latte = Coffee(name: "LATTE", assetName: "latte", picture: "lattepicture", description: "peepoo", price: 5.00)
    return CoffeeTileView(coffee: latte)
}
