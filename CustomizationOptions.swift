//
//  CustomizationOptions.swift
//  CoffeeApp
//
//  Created by Aubri McEachern on 10/12/26.
//
import Foundation
import SwiftUI

struct CustomizationOptions: View {
    
    var coffee: Coffee
    
    
    var body : some View {
        
        if coffee.isBeverage == .isBeverage{
            CustomizationView(coffee : coffee)
        }
        else {
            BaggedCoffee(coffee: coffee)
        }
    
    }
}
