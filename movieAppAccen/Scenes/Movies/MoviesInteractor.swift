//
//  MoviesInteractor.swift
//  movieAppAccen
//
//  Created by Orlando Velasco on 21-10-23.
//

import Foundation

protocol MoviesBusinessLogic {
    func fetchMovies(request: Movies.FetchMovies.Request)
}

class MoviesInteractor: MoviesBusinessLogic {
    var presenter: MoviesPresentationLogic?
    var worker: MoviesWorker = MoviesWorker()

    func fetchMovies(request: Movies.FetchMovies.Request) {
        worker.fetchTopRatedMovies { movies, error in
            if let movies = movies {
                let response = Movies.FetchMovies.Response(movies: movies)
                self.presenter?.presentFetchedMovies(response: response)
            }
        }
    }
}
