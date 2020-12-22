//
//  HTTPMethod.swift
//  MyInstagram
//
//  Created by Gordon Feng on 22/12/20.
//  Copyright © 2020 GordonFeng. All rights reserved.
//

import Foundation

enum HTTPMethod: String {
    case POST = "POST"
    case GET = "GET"
}

extension HTTPMethod {
    var adapter: AnyAdapter {
        return AnyAdapter { (request) -> URLRequest in
            var request = request
            request.httpMethod = self.rawValue
            return request
        }
    }
}
