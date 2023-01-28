//
//  Photo.swift
//  SomePractice
//
//  Created by Dinmukhamed on 25.01.2023.
//

import Foundation
struct Photo: Codable {
    let albumId, id: Int
    let title: String
    let url, thumbnailUrl: String

//    enum CodingKeys: String, CodingKey {
//        case albumId = "albumId"
//        case id, title, url
//        case thumbnailUrl = "thumbnailUrl"
//    }
}

//typealias Photo = [PhotoElement]
