//
//  Extension+Text.swift
//  NewsApp
//
//  Created by Roman on 17/07/2024.
//

import SwiftUI

extension Text {
    func titleFont() -> some View {
        self
            .foregroundColor(.primary)
            .font(.system(size: 16, weight: .bold, design: .rounded))
            .opacity(0.8)
        
    }
    
    func descriptionFont() -> some View {
        self
            .foregroundColor(.primary)
            .font(.system(size: 14, weight: .regular, design: .rounded))
            .opacity(0.8)
        
    }
}
