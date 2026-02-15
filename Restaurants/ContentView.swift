//
//  ContentView.swift
//  Restaurants
//
//  Created by Ayan Allahverdili on 15.02.26.
//

import SwiftUI

struct ContentView: View {
    
  static  let restaurant1: Restaurants = Restaurants(title: "Coffee & TeaShop", type: .coffeShop, location: "Hong Kong", image: "cafelore")
  static   let restaurant2: Restaurants = Restaurants(title: "Homei", type: .teaHouse, location: "London", image: "teakha")
  static let restaurant3: Restaurants = Restaurants(title: "Donostia", type: .waffleHouse, location: "Baku", image: "waffleandwolf")
  static let restaurant4: Restaurants = Restaurants(title: "Barrafina", type: .breakfast, location: "Moscow", image: "barrafina")
    
    var restaurantList: [Restaurants] = [restaurant1, restaurant2, restaurant3, restaurant4]
    
    
    
    
    var body: some View {
        
        List {
            ForEach(0...restaurantList.count-1, id: \.self) { index in
                RestaurantView(
                    title: restaurantList[index].title,
                    type: restaurantList[index].type,
                    location: restaurantList[index].location,
                    image: restaurantList[index].image
                )
         
            }
            
        }
        .listStyle(.plain)
        
    }
}

#Preview {
    ContentView()
}

