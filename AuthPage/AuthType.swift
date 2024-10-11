//
//  AuthType.swift
//  AuthPage
//
//  Created by Gab on 10/11/24.
//

import SwiftUI

struct AuthType: OptionSet {
    let rawValue: Int
    
    static let verification = AuthType(rawValue: 1 << 0)
    static let manage = AuthType(rawValue: 1 << 1)
}

extension AuthType {
    var stringValue: String {
        switch self {
        case .verification:
            return "인증"
        case .manage:
            return "관리"
        default:
            return ""
        }
    }
}
