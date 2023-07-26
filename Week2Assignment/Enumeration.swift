//
//  Enumeration.swift
//  Week2Assignment
//
//  Created by NAM on 2023/07/26.
//

import Foundation

enum Emotion: Int {
    case superHappy = 1
    case happy
    case normal
    case sad
    case superSad
    
    // 연산프로퍼티
    var assetName: String {
        switch self {
        case .superHappy:
            return "emoji1"
        case .happy:
            return "emoji2"
        case .normal:
            return "emoji3"
        case .sad:
            return "emoji4"
        case .superSad:
            return "emoji5"
        }
    }
}

