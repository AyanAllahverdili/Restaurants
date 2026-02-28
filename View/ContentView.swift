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
            isFavorite: false,
            description: "Searching for great breakfast eateries and coffee? This place is for you. We open at 6:30 every morning, and close at 9 PM. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. Come over and enjoy a great meal."
        ),
        Restaurants(
            title: "Homei",
            type: .teaHouse,
            location: "London",
            image: "teakha",
            isFavorite: false,
            description: "Very good basque food, creative dishes with terrific flavors! Donostia is a high end tapas restaurant with a friendly relaxed ambiance. Come over to enjoy awesome tapas!"
        ),
        Restaurants(
            title: "Donostia",
            type: .waffleHouse,
            location: "Baku",
            image: "waffleandwolf",
            isFavorite: false,
            description: "Searching for great breakfast eateries and coffee? This place is for you. We open at 6:30 every morning, and close at 9 PM. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. Come over and enjoy a great meal."
         ),
        Restaurants(
            title: "Barrafina",
            type: .breakfast,
            location: "Moscow",
            image: "barrafina",
            isFavorite: false,
            description: "a collection of authentic Spanish Tapas bars in Central London! We have an open kitchen, a beautiful marble-topped bar where guests can sit and watch the chefs at work and stylish red leather stools. Lunch starts at 1 PM. Dinners starts 5:30 PM."
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

