//
//  Coffee.swift
//  MyApp
//
//  Created by Aubri McEachern on 9/24/26.
//
import SwiftUI
import Foundation

struct Coffee: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var assetName: String
    var picture: String
    var description: String
    var price: Double = 0
    var milk: Milk = .skim
    var temp: Temp = .warm
    var sweet: Sweet = .extra
    var espresso: Espresso = .decaf
    var toGo: Bool = false
    var specialRequest: String = ""
    var extras: Set<Extras> = []   // was: var extras: Extras = .quad
    var quantity: Int = 1          // was 0, which made every new item cost $0
    var isBeverage: ItemType = .isBeverage
    
    func calculatePrice() -> Double {
        var total = price + milk.upcharge
        for extra in extras {
            total += extra.basePrice
        }
        return total
    }
}

enum ItemType: String, CaseIterable {
    case isBeverage
    case isNotBeverage
}
    

/* */ 
