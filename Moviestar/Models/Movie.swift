//
//  Movie.swift
//  Moviestar
//
//  Created by 235 on 2023/05/29.
//

import Foundation
struct Movie: Decodable {
  let title: String
  private let image: String
  let pubDate: String
  let director: String
  let actor: String
  let userRating: String
    var imageURL: URL? { URL(string: image)}
}
