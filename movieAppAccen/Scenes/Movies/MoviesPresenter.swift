//
//  MoviesPresenter.swift
//  movieAppAccen
//
//  Created by Orlando Velasco on 21-10-23.
//

import Foundation

protocol MoviesPresentationLogic {
    func presentFetchedMovies(response: Movies.FetchMovies.Response)
}

class MoviesPresenter: MoviesPresentationLogic {
    var view: MoviesDisplayLogic?

    func presentFetchedMovies(response: Movies.FetchMovies.Response) {
        let displayedMovies = response.movies.map { movie in
            Movies.FetchMovies.ViewModel.DisplayedMovie(
                id: movie.id,
                title: movie.title,
                overview: movie.overview,
                releaseDate: movie.releaseDate,
                posterPath: movie.posterPath
            )
        }
        let viewModel = Movies.FetchMovies.ViewModel(displayedMovies: displayedMovies)
        view?.displayFetchedMovies(viewModel: viewModel)
    }
}
