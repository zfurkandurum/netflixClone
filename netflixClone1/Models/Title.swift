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

/**
 "adult": false,
 "backdrop_path": "/i2GVEvltEu3BXn5crBSxgKuTaca.jpg",
 "id": 614479,
 "title": "Insidious: The Red Door",
 "original_language": "en",
 "original_title": "Insidious: The Red Door",
 "overview": "To put their demons to rest once and for all, Josh Lambert and a college-aged Dalton Lambert must go deeper into The Further than ever before, facing their family's dark past and a host of new and more horrifying terrors that lurk behind the red door.",
 "poster_path": "/d07phJqCx6z5wILDYqkyraorDPi.jpg",
 "media_type": "movie",
 "genre_ids": [
     27,
     9648,
     53
 ],
 "popularity": 1282.953,
 "release_date": "2023-07-05",
 "video": false,
 "vote_average": 6.541,
 "vote_count": 395
 */
