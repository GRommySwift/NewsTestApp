//
//  ViewModel.swift
//  NewsApp
//
//  Created by Roman on 17/07/2024.
//

import Foundation

@MainActor
final class ViewModel: ObservableObject {
    //MARK: - Properties
    @Published var topNews: [Article] = []
    @Published var bottomNews: [Article] = []
    
    init() {
        fetchTopNews()
        fetchBottomNews()
    }
    //MARK: - Methods
    
    func fetchTopNews() {
        Task {
            do {
                let articles = try await NetworkManager.shared.getNews(url: URLConstants.urlNews)
                topNews = articles.articles
            } catch {
                if let error = error as? NetworkError {
                    print(error)
                }
            }
        }
    }
    
    func fetchBottomNews() {
        Task {
            do {
                let articles = try await NetworkManager.shared.getNews(url: URLConstants.bottomNewsURL)
                bottomNews = articles.articles
            } catch {
                if let error = error as? NetworkError {
                    print(error)
                }
            }
        }
    }
    
}
