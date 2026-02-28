//
//  RestaurantDetailView.swift
//  Restaurants
//
//  Created by Ayan Allahverdili on 22.02.26.
//
import SwiftUI

struct RestaurantDetailView: View {
    @Environment(\.dismiss) var dismiss
    var restaurant: Restaurants

    var body: some View {
        ScrollView{
            VStack(alignment: .leading, ) {
                Image(restaurant.image)
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 0 ,maxWidth: .infinity)
                    .frame(height: 445)
                    .overlay{
                        VStack{
                            Image(systemName: "heart")
                                .frame(minWidth: 0 , maxWidth: .infinity ,minHeight: 0 , maxHeight: .infinity ,alignment: .topTrailing)
                                .padding()
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .padding(.top ,40)
                            VStack(alignment: .leading, spacing: 5){
                                Text(restaurant.title)
                                    .font(.custom("Nunito-Regular", size: 35,relativeTo: .largeTitle))
                                    .bold()
                                Text(restaurant.type.description)
                                    .font(.system(.headline, design: .rounded))
                                    .padding(.all,5)
                                    .background(Color(.black))
                            }
                            .frame(minWidth: 0 , maxWidth: .infinity ,minHeight: 0 , maxHeight: .infinity ,alignment: .bottomLeading)
                            .foregroundColor(.white)
                            .padding()
                        }
                    }
                Text(restaurant.description)
                    .padding()
                HStack(alignment: .top){
                    VStack{
                        Text("ADDRESS")
                            .font(.system(.headline ,design: .rounded))
                        Text(restaurant.location)
                    }
                    .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                    VStack{
                        Text("PHONE")
                            .font(.system(.headline ,design: .rounded))
                        Text(restaurant.phone)
                    }
                    .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                }
                .padding(.horizontal)
            }
        }
        
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button(action: {
                    dismiss()
                }) {
                    Text("\(Image(systemName: "chevron.left"))\(restaurant.title)")
                }

            }
        }
        .ignoresSafeArea()
    }
}


struct  RestaurantDetailView_Previews: PreviewProvider {
    static var previews: some View{
        NavigationStack{
            RestaurantDetailView(restaurant: Restaurants(title: "Cafe & Deanded", type: .waffleHouse, location: "Baku", image: "cafedeadend", isFavorite: false, description: "Searching for great breakfast eateries and coffee? This place is for you. We open at 6:30 every morning, and close at 9 PM. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. Come over and enjoy a great meal.", phone: "055-334-89-78"))
        }
        .accentColor(.white)
        .preferredColorScheme(.dark)
    }
}


           
        
    



