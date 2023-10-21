//
//  MovieView.swift
//  movieAppAccen
//
//  Created by Orlando Velasco on 21-10-23.
//

import SwiftUI

struct MovieView: View {
    @ObservedObject var viewModel: MovieViewModel

    var body: some View {
        NavigationView {
            List(viewModel.displayedMovies) { movie in
                VStack(alignment: .leading) {
                    Text(movie.title)
                        .font(.headline)
                    Text(movie.overview)
                        .font(.subheadline)
                        .lineLimit(3)
                    Text(movie.releaseDate)
                        .font(.caption)
                }
            }
            .navigationTitle("Movies")
        }
        .onAppear(perform: viewModel.fetchMovies)
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(viewModel: MovieViewModel())
    }
}
