//
//  RestaurantDetailView.swift
//  Restaurants
//
//  Created by Ayan Allahverdili on 22.02.26.
//
import SwiftUI

struct RestaurantDetailView: View {
    var restaurant: Restaurants

    var body: some View {
        ZStack(alignment: .top){
            Image(restaurant.image)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .ignoresSafeArea()
            
            Color.black
                .frame(height: 100)
                .opacity(0.8)
                .cornerRadius(20)
                .padding()
            
                .overlay{
                    VStack(spacing: 5){
                        Text(restaurant.title)
                        Text(restaurant.type.description)
                        Text(restaurant.location)
                    }
                    .font(.system(.headline , design: .rounded))
                    .foregroundStyle(.white)
                    
                }
        }
    }
}

#Preview {
    RestaurantDetailView(
        restaurant: Restaurants(
            title: "Test",
            type: .breakfast,
            location: "Baku",
            image: "cafedeadend",
            isFavorite: false
        ))
//        RestaurantDetailView(restaurant: Restaurants(
//                title: "Test",
//                type: .pizzaHouse,
//                location: "Baku",
//                image: "",
//                isFavorite: false
//            ))
            .preferredColorScheme(.dark)
        
    
}


