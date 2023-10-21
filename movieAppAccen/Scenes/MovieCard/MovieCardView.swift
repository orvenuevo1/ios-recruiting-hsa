//
//  MovieCardView.swift
//  movieAppAccen
//
//  Created by Orlando Velasco on 21-10-23.
//

import SwiftUI

struct MovieCardView: View {
    var movie: Movies.FetchMovies.ViewModel.DisplayedMovie
    
    var body: some View {
        NavigationLink(destination: MovieDetailView(movie: movie)) {

            VStack {
                if movie.posterPath != nil {
                    Image("placeholderImage")
                        .resizable()
                        .scaledToFit()
                } else {
                    Image("defaultImage")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
                HStack {
                    Spacer()
                    
                    Text(movie.title)
                        .fontWeight(.medium)
                        .frame(height: 60)
                    //.foregroundColor(Color("mostaza"))
                    Spacer()
                    
                    Button(action: {
                        print("favorito ",movie.title)
                    }) {
                        Image(systemName: true ? "heart.fill" : "heart")
                            .font(.system(size: 25))
                        // .foregroundColor(Color("mostaza"))
                            .padding(.trailing, 5)
                    }
                }
                .background(Color.gray)
            }
        }
        .border(Color.black, width: 2)
        .frame(width: 180, height: 250)
    }
}
