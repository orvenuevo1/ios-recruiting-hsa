//
//  TabBarView.swift
//  movieAppAccen
//
//  Created by Orlando Velasco on 21-10-23.
//

import SwiftUI

struct TabBarView: View {
   
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                print("favorito")
            }) {
                VStack{
                    Image(systemName: "list.bullet")
                        .font(.system(size: 30))
                    Text("Movies")
                        .font(.system(size: 10))
                }
            }
            Spacer()
            Button(action: {
                print("favorito")
            }) {
                VStack{
                    Image(systemName: "heart")
                        .font(.system(size: 30))
                    Text("Favorites")
                        .font(.system(size: 10))
                }
                
            }
            Spacer()
        }
    }
}
