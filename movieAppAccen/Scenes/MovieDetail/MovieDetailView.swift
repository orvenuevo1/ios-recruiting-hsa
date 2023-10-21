//
//  MovieDetailView.swift
//  movieAppAccen
//
//  Created by Orlando Velasco on 21-10-23.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: Movies.FetchMovies.ViewModel.DisplayedMovie

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(movie.posterPath ?? "placeholderImage")
                            .resizable()
                            .scaledToFit()
                            .padding(.top, 20)
            HStack{
                Text(movie.title)
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
            Divider().background(Color.black)
            Text(movie.releaseDate)
            Divider().background(Color.black)
            let genreNames = movie.genreIds.compactMap { GenreManager.shared.genre(forID: $0)?.name }
            if !genreNames.isEmpty {
                Text(genreNames.joined(separator: ", "))
            }
            Divider().background(Color.black)
            Text(movie.overview)
            Spacer()
        }
        .padding()
    }
}
