//
//  OrderType.swift
//  Restaurants
//
//  Created by Ayan Allahverdili on 15.02.26.
//
import SwiftUI

enum OrderType:String {
    case breakfast
    case coffeShop
    case teaHouse
    case waffleHouse
    case pizzaHouse
    
    var description:String {
        switch self {
        case .breakfast:
            return "Breakfast"
        case .coffeShop:
            return "Coffee Shop"
        case .teaHouse:
            return "Tea House"
        case .waffleHouse:
            return "Waffle House"
        case .pizzaHouse:
            return "Pizza House"
        }
    }
}
