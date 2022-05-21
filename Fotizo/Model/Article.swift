//
//  Article.swift
//  Fotizo
//
//  Created by Naomi Schettini on 5/21/22.
//

import Foundation

struct Article: Codable {
    
    struct Author: Codable {
        let firstName: String
        let lastName: String
        let position: Int
        
        enum CodingKeys: String, CodingKey {
            case firstName = "given"
            case lastName = "family"
            case position = "sequence"
        }
    }
    
    let DOI: String
    let title: String
    let authors: [Author]
    let citations: Int
    let url: String
    let journal: String
    let year: Int
    
    enum CodingKeys: String, CodingKey {
        case DOI
        case title
        case authors
        case citations
        case url
        case journal
        case year
        
    }
}
