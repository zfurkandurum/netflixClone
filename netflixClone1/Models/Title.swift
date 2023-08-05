//
//  Movie.swift
//  netflixClone1
//
//  Created by Zeki Furkan Durum on 3.08.2023.
//

import Foundation

struct TrendingsTitleResponse: Codable{
    let results: [Title]
}


struct Title: Codable {
    let id: Int
    let title: String?
    let original_language: String?
    let original_title: String?
    let overview: String?
    let poster_path: String?
    let media_type: String?
    let realese_date: String?
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
  
   
   
}

