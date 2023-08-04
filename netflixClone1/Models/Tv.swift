//
//  Tv.swift
//  netflixClone1
//
//  Created by Zeki Furkan Durum on 3.08.2023.
//

import Foundation

struct TrendingTVResponse: Codable {
    let results: [Tv]
}

struct Tv: Codable {
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
 adult = 0;
 "backdrop_path" = "/pcOLnrncuB9azJPiPqtuwukKbLL.jpg";
 "first_air_date" = "2023-06-28";
 "genre_ids" =             (
     18
 );
 id = 198102;
 "media_type" = tv;
 name = Hijack;
 "origin_country" =             (
     GB
 );
 "original_language" = en;
 "original_name" = Hijack;
 overview = "When Flight KA29 is hijacked during its seven-hour journey from Dubai to London, Sam Nelson\U2014an accomplished corporate negotiator\U2014tries using his professional skills to save everyone on board. Will this high-risk strategy be his undoing?";
 popularity = "979.0410000000001";
 "poster_path" = "/szDEqqarPi3YqiPLevm7LObYrDJ.jpg";
 "vote_average" = "8.4";
 "vote_count" = 138;
 */
