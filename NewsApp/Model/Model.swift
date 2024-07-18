//
//  Model.swift
//  NewsApp
//
//  Created by Roman on 13/07/2024.
//

import Foundation

// MARK: - News
struct News: Decodable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Decodable {
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
    let publishedAt: Date
}
