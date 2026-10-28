//
//  Cart.swift
//  CoffeeApp
//
//  Created by Aubri McEachern on 10/6/26.
//
import Foundation
import SwiftUI

@Observable
class Cart {
    var items: [Coffee] = []
    
    func add(  coffee: Coffee) {
        items.append(coffee)
    }
    
    func remove(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
    var subtotal: Double {
        items.reduce(0) { $0 + $1.calculatePrice() * Double($1.quantity) }
    }
    
    var tax: Double {
        subtotal * 0.06
    }
    
    var total: Double {
        subtotal + tax
    }
}
