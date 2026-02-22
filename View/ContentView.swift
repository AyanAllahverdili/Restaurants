//
//  ContentView.swift
//  Restaurants
//
//  Created by Ayan Allahverdili on 15.02.26.
//

import SwiftUI

struct ContentView: View {
    

    
    @State var restaurantList: [Restaurants] = [
        Restaurants(
            title: "Coffee & TeaShop",
            type: .coffeShop,
            location: "Hong Kong",
            image: "cafelore",
            isFavorite: false
        ),
        Restaurants(
            title: "Homei",
            type: .teaHouse,
            location: "London",
            image: "teakha",
            isFavorite: false
        ),
        Restaurants(
            title: "Donostia",
            type: .waffleHouse,
            location: "Baku",
            image: "waffleandwolf",
            isFavorite: false
         ),
        Restaurants(
            title: "Barrafina",
            type: .breakfast,
            location: "Moscow",
            image: "barrafina",
            isFavorite: false
        )
    ]
    
    
    
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(0...$restaurantList.count-1, id: \.self) { index in
                    NavigationLink(destination: RestaurantDetailView(restaurant:restaurantList[index])){
                        
                        
                        RestaurantView(restaurant: $restaurantList[index])
                    }
                        .swipeActions(edge: .leading, allowsFullSwipe: false) {
                            Button {
                                //
                            } label: {
                                Image(systemName: "heart")
                            }
                            .tint(.green)
                            
                            Button {
                                //
                            } label: {
                                Image(systemName:"square.and.arrow.up")
                            }
                            .tint(.orange)
                            
                            
                        }
                }
                
                .onDelete(perform: {IndexSet in
                    restaurantList.remove(atOffsets:IndexSet)
                })
                .listRowSeparator(.hidden)
            }
            .navigationTitle("Food Pin")
            .navigationBarTitleDisplayMode(.automatic)
        }
        .listStyle(.plain)
        
    }
}

#Preview {
    ContentView()
}

