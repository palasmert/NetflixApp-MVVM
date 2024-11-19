//
//  NetworkConstants.swift
//  NetflixApp-MVVM
//
//  Created by Mert Palas on 15.11.2024.
//

import Foundation
//https://api.themoviedb.org/3/movie/popular?api_key=fab6464769e3d822047ea1ffd1e6430e

protocol EndPointProtocol {
    var baseURL: String {get}
    var genreURL: String {get}
    var apiKey: String {get}
    var method: HTTPMethod{get}
    
    func movieApiURL() -> String
    func request() -> URLRequest
}

enum HTTPMethod: String {
    case post = "POST"
    case get = "GET"
}

enum EndPoint {
    case popular
    case topRated
    case upComing
}

extension EndPoint: EndPointProtocol {
    var baseURL: String {
        return "https://api.themoviedb.org/3/movie"
    }
    
    var genreURL: String {
        switch self {
        case.popular:
            return "popular"
        case.topRated:
            return "top_rated"
        case.upComing:
            return "upcoming"
        }
    }
    
    var apiKey: String {
        return "?api_key=fab6464769e3d822047ea1ffd1e6430e"
    }
    
    var method: HTTPMethod {
        switch self {
        case.popular:
            return .get
        case.topRated:
            return .get
        case.upComing:
            return .get
        }
    }
    
    func movieApiURL() -> String {
        return "\(baseURL)/\(genreURL)\(apiKey)"
    }
    func request() -> URLRequest {
        guard let apiURL = URLComponents(string: movieApiURL()) else {
            fatalError("url comp oluşturulamadı")
        }
        
        guard let url = apiURL.url else {
            fatalError("url oluşturulamadı")
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        
        return request
        
    }
}
