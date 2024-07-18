//
//  NetworkError.swift
//  NewsApp
//
//  Created by Roman on 13/07/2024.
//

import Foundation

enum NetworkError: String, Error {
    case invalidURL = "Invalid URL"
    case invalidResponse = "Inavalid response from a server"
    case invalidData = "The data received from the server invalid"
}
