//
//  TitleNewsView.swift
//  NewsApp
//
//  Created by Roman on 18/07/2024.
//

import SwiftUI


struct TitleNewsView: View {
    let textOFtitle: String
    var body: some View {
        Text(textOFtitle)
            .font(.title)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            .padding(.top)
    }
}
