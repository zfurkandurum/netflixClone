//
//  youtubeSearchResponse.swift
//  netflixClone1
//
//  Created by Zeki Furkan Durum on 5.08.2023.
//

import Foundation


struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}


struct VideoElement: Codable {
    let id:IDVideoElement
}

struct IDVideoElement: Codable {
    let kind: String
    let videoID: String
    
}
