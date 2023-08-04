//
//  apiCaller.swift
//  netflixClone1
//
//  Created by Zeki Furkan Durum on 2.08.2023.
//

import Foundation

struct Constansts {
    static let API_KEY = "b13ef47feb07d35f71478123672a9f5e"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError:Error {
    case failedTogetData
}

class APICaller {
    static let shared = APICaller()
    
    
    func getTrendingsMovies(completion: @escaping (Result<[Movie], Error>) -> Void ) {
        guard let url = URL(string: "\(Constansts.baseURL)/3/trending/movie/day?api_key=\(Constansts.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {data, _, error in
            guard let data = data , error == nil else {
                return
            }
            do{
                let results = try JSONDecoder().decode(TrendingsMoviewResponse.self, from: data)
                completion(.success(results.results))
            }
            catch{
                completion(.failure(error))
            }
            
        }
        task.resume()
    }
    
    
    func getTrendingTvs(completion: @escaping (Result<[Tv], Error>) -> Void ) {
        guard let url = URL(string: "\(Constansts.baseURL)/3/trending/tv/day?api_key=\(Constansts.API_KEY)") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do{
                let results = try JSONDecoder().decode(TrendingTVResponse.self, from: data)
                print(results)
            }
            catch{
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    func getUpcomingMovies(completion: @escaping (Result<[Movie], Error>) -> Void ) {
        guard let url = URL(string: "\(Constansts.baseURL)/3/movie/upcoming?api_key=\(Constansts.API_KEY)&language=en-US&page=1") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do{
                let results = try JSONDecoder().decode(TrendingsMoviewResponse.self, from: data)
                print(results)
            }
            catch{
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    func getPopular(completion: @escaping (Result<[Movie], Error>) -> Void ) {
        guard let url = URL(string: "\(Constansts.baseURL)/3/movie/popular?api_key=\(Constansts.API_KEY)&language=en-US&page=1") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do{
                let results = try JSONDecoder().decode(TrendingsMoviewResponse.self, from: data)
                print(results)
            }
            catch{
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    func getTopRated(completion: @escaping (Result<[Movie], Error>) -> Void ) {
        guard let url = URL(string: "\(Constansts.baseURL)/3/movie/top_rated?api_key=\(Constansts.API_KEY)&language=en-US&page=1") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do{
                let results = try JSONDecoder().decode(TrendingsMoviewResponse.self, from: data)
                print(results)
            }
            catch{
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
}
