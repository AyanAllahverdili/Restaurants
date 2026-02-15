//
//  RestaurantView.swift
//  Restaurants
//
//  Created by Ayan Allahverdili on 15.02.26.
//

import SwiftUI

struct RestaurantView: View {
    @State private var showOptions: Bool = false
    
    let title: String
    let type: OrderType
    let location: String
    let image: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
           
            Image(self.image)
                .resizable()
                .scaledToFill()
                .frame(height: 180)
                .cornerRadius(20)
            VStack(alignment: .leading){
                Text (self.title)
                    .font(.system(.title2 , design: .rounded))
                    .fontWeight(.semibold)
                Text(self.type.description)
                    .font(.system(.headline , design: .rounded))
                    .fontWeight(.medium)
                
                Text(self.location)
                    .font(.system(.subheadline , design: .rounded))
                    .foregroundColor(.gray)
                }
                .padding(.vertical,8)
                .listRowSeparator(.hidden)
        }
        .onTapGesture {
            showOptions.toggle()
        }
        .confirmationDialog(
            "what do you want to do?",
            isPresented:  $showOptions,
            titleVisibility: .visible
        ) {
            Button("Mark as favorite"){
                print("added to favorites!")
            }
        }
    }
}
struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView(
            title: "Numune 1",
            type: .breakfast,
            location: "London",
            image: "haigh"
        )
    
            RestaurantView(
            title: "Numune 2",
            type: .coffeShop,
            location: "Paris",
            image: "haigh"
        )
    }
        
    }

