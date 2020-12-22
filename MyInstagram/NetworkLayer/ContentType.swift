//
//  ContentType.swift
//  MyInstagram
//
//  Created by Gordon Feng on 22/12/20.
//  Copyright © 2020 GordonFeng. All rights reserved.
//

import Foundation

enum ContentType: String {
    case json       = "application/json"
    case urlForm    = "application/x-www-form-urlencoded; charset=utf-8"

    var headerAdapter: AnyAdapter {
        return AnyAdapter { (request) -> URLRequest in
            var request = request
            request.httpMethod = self.rawValue
            return request
        }
    }

    func dataAdapter(for data: [String: Any]) -> RequestAdapter {
        switch self {
        case .json:     return JSONRequestAdapter(data: data)
        case .urlForm:  return URLQueryDataAdapter(data: data)
        }
    }
}

struct URLQueryDataAdapter: RequestAdapter {

    let data: [String: Any]
    func adapted(_ request: URLRequest) throws -> URLRequest {
        fatalError("Not implmented yet")
    }
}

struct JSONRequestAdapter: RequestAdapter {

    let data: [String: Any]
    func adapted(_ request: URLRequest) throws -> URLRequest {
        var request = request
        request.httpBody = try JSONSerialization.data(withJSONObject: data, options: [])
        return request
    }

}
