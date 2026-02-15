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
    
    
    
    
    var restaurantList1 = ["Restoran 1", "Restoran 2", "Restoran 3", "Restoran 4", "Restoran 5"]
    
    
    var body: some View {
        
        List {
            ForEach(0...restaurantList.count-1, id: \.self) { index in
                
                VStack(alignment: .leading, spacing: 10) {
                    Image(restaurantList[index].image)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 180)
                        .cornerRadius(20)
                    VStack(alignment: .leading){
                        Text (restaurantList[index].title)
                            .font(.system(.title2 , design: .rounded))
                            .fontWeight(.semibold)
                        Text(restaurantList[index].type.description)
                            .font(.system(.headline , design: .rounded))
                            .fontWeight(.medium)
                        
                        Text(restaurantList[index].location)
                            .font(.system(.subheadline , design: .rounded))
                            .foregroundColor(.gray)
                        }
                    .padding(.horizontal,4)
                    
                }
                .padding(.vertical,8)
                .listRowSeparator(.hidden)
            }
            
        }
        .listStyle(.plain)
        
    }
}

#Preview {
    ContentView()
}

