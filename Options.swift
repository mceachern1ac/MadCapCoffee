//
//  Options.swift
//  CoffeeApp
//
//  Created by Aubri McEachern on 9/28/26.
//
import Foundation

enum Milk:String, CaseIterable {
    case skim
    case oat
    case breve
    case whole
    
    var displayName:String {
        switch self {
        case .skim: return "SKIM"
        case .oat: return "OAT"
        case .breve: return "BREVE"
        case .whole: return "WHOLE"
        }
    }
    
    var upcharge: Double {
        switch self {
        case .skim, .whole: return 0
        case .oat: return 0.50
        case .breve: return 1.00
        }
    }
}

enum Temp:String, CaseIterable {
    case warm
    case hot
    case iced
    
    var displayName:String {
        switch self {
        case .warm: return "WARM"
        case .hot: return "HOT"
        case .iced: return "ICED"
        }
    }
}

enum Sweet:String, CaseIterable {
    case none
    case extra
    case half
    
    var displayName:String {
        switch self {
        case .none: return "NONE"
        case .extra: return "EXTRA"
        case .half: return "HALF"
        }
    }
}

enum Espresso:String, CaseIterable {
    case decaf
    case some
    case double
    
    var displayName:String {
        switch self {
        case .decaf: return "DECAF"
        case .some: return "SOME"
        case .double: return "DOUBLE"
        }
    }
}

enum Extras:String, CaseIterable, Identifiable {
    case triple = "Triple"
    case quad = "Quad"
    
    var id: String {rawValue}
    
    var displayName:String {
        switch self {
        case .triple: return "EXTRA ESPRESSO (TRIPLE)"
        case .quad: return "EXTRA ESPRESSO (QUAD)"
        }
        
    }
        
        
        var basePrice: Double {
            switch self {
            case .triple:
                return 2
            case .quad:
                return 2
            }
            
        }
    }
