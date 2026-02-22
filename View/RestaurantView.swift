//
//  RestaurantView.swift
//  Restaurants
//
//  Created by Ayan Allahverdili on 15.02.26.
//

import SwiftUI

struct RestaurantView: View {
    @State private var showOptions: Bool = false
    @State private var showError: Bool = false

    @Binding var restaurant: Restaurants
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
           
            Image(self.restaurant.image)
                .resizable()
                .scaledToFill()
                .frame(height: 180)
                .cornerRadius(20)
            
            HStack(alignment: .top, spacing: 20){
                VStack(alignment: .leading){
                    Text (self.restaurant.title)
                        .font(.system(.title2 , design: .rounded))
                        .fontWeight(.semibold)
                    Text(self.restaurant.type.description)
                        .font(.system(.headline , design: .rounded))
                        .fontWeight(.medium)
                    
                    Text(self.restaurant.location)
                        .font(.system(.subheadline , design: .rounded))
                        .foregroundColor(.gray)
                    }
                    .padding(.vertical,8)
                    .listRowSeparator(.hidden)
                
                  if restaurant.isFavorite{
                      Spacer()
                      Image(systemName: "heart.fill")
                          .foregroundColor(.yellow)
                          .padding(.trailing, 16)
                }
            }
            
         
        }
        .contextMenu{
            Button(action: {
                showError.toggle()
            }) {
                HStack{
                    Text("Reserve a table")
                    Image(systemName: "phone")
                }
              
            }
            Button(action: {
                restaurant.isFavorite.toggle()
            }) {
                HStack{
                    Text(restaurant.isFavorite ?  "Remove from favorite": "Mark as favorite")
                    Image(systemName: "heart")
                }
              
            }

        }

          .alert("Not working", isPresented: $showError){
              
            Button("OK"){
                print("bura klik edildi, demeli maraq var")
            }
        } message: {
            Text("Sorry,  this feature is not available.")
        }
    }
}

