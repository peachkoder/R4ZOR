//
//  PostData.swift
//  R4ZORSwiftUI
//
//  Created by doc on 02/12/2022.
//

import Foundation

struct Results: Decodable {
    let hits: [PostData]
}

struct PostData: Decodable, Identifiable {
    let objectID: String
    let points: Int
    let title:  String
    let url:    String?
    
    var id: String {
        return objectID
    }
}
