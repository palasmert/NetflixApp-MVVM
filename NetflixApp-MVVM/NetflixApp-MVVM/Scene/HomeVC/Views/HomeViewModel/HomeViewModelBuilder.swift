//
//  HomeViewModelBuilder.swift
//  NetflixApp-MVVM
//
//  Created by Mert Palas on 19.11.2024.
//

import Foundation
public class MovieListBuilder {
    static func make() -> HomeViewController {
        let vc = HomeViewController()
        let viewModel = HomeViewModel(service: NetworkCaller())
        vc.viewModel = viewModel
        return vc
    }
}
