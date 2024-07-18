//
//  DescriptionView.swift
//  NewsApp
//
//  Created by Roman on 18/07/2024.
//

import SwiftUI

struct DescriptionView: View {
    let article: Article
    var body: some View {
        if let description = article.description {
            Text(description)
                .descriptionFont()
        }
    }
}
