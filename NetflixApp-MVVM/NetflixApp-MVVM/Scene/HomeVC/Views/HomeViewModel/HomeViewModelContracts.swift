//
//  HomeViewModelContracts.swift
//  NetflixApp-MVVM
//
//  Created by Mert Palas on 19.11.2024.
//

import Foundation
protocol MovieListViewModelProtocol {
    var delegate: MovieListViewModelDelegate? { get set }
    func load()
}

enum MovieListModelOutput {
    case popular ([MovieResult])
    case upComing ([MovieResult])
    case topRated ([MovieResult])
    case error (Error)
}

protocol MovieListViewModelDelegate {
    func handleOutput(_ output: MovieListModelOutput)
}
