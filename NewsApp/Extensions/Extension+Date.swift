//
//  Extension+Date.swift
//  NewsApp
//
//  Created by Roman on 17/07/2024.
//

import Foundation

extension Date {
    func convertDate() -> String {
        return formatted(.dateTime.hour().minute().day().month().year())
    }
}