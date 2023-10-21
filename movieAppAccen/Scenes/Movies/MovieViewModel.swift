//
//  MovieViewModel.swift
//  movieAppAccen
//
//  Created by Orlando Velasco on 21-10-23.
//

import Foundation

class MovieViewModel: ObservableObject, MoviesDisplayLogic {
    @Published var displayedMovies: [Movies.FetchMovies.ViewModel.DisplayedMovie] = []
    var interactor: MoviesBusinessLogic?
    var presenter: MoviesPresentationLogic?
    
    init() {
            let interactor = MoviesInteractor()
            let presenter = MoviesPresenter()
            self.interactor = interactor
            self.presenter = presenter
            interactor.presenter = presenter
            presenter.view = self
        }

    func fetchMovies() {
        let request = Movies.FetchMovies.Request()
        interactor?.fetchMovies(request: request)
    }

    func displayFetchedMovies(viewModel: Movies.FetchMovies.ViewModel) {
        displayedMovies = viewModel.displayedMovies
    }
}
