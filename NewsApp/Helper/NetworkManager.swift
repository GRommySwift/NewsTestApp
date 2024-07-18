//
//  NetworkManager.swift
//  NewsApp
//
//  Created by Roman on 13/07/2024.
//

import Foundation

final class NetworkManager {
    
    // MARK: - Properties
    static let shared = NetworkManager()
    private let deceoder = JSONDecoder()
    
    // MARK: - Initializer
    private init() {
        deceoder.dateDecodingStrategy = .iso8601
        
    }
    
    // MARK: - Methods
    func getNews(url: String) async throws -> News {
        guard let url = URL(string: url) else { throw NetworkError.invalidURL }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw NetworkError.invalidResponse}
        do {
            return try deceoder.decode(News.self, from: data)
        } catch {
            throw NetworkError.invalidData
        }
    }
}
