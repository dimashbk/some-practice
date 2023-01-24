//
//  Photo.swift
//  SomePractice
//
//  Created by Dinmukhamed on 25.01.2023.
//

import Foundation
struct Photo: Codable {
    let albumID, id: Int
    let title: String
    let url, thumbnailURL: String

    enum CodingKeys: String, CodingKey {
        case albumID = "albumId"
        case id, title, url
        case thumbnailURL = "thumbnailUrl"
    }
}
