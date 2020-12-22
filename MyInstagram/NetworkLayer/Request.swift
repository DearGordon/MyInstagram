//
//  Request.swift
//  MyInstagram
//
//  Created by Gordon Feng on 22/12/20.
//  Copyright © 2020 GordonFeng. All rights reserved.
//

import Foundation

protocol Request {

    associatedtype Response: Decodable

    var url: URL { get }
    var method: HTTPMethod { get }
    var parameters: [String: Any] { get }
    var contentType: ContentType { get }

    var adapters: [RequestAdapter] { get }
    var decision: [Decision] { get }
}

extension Request {

    var decision: [Decision] {
        return []
    }

    var adapters: [RequestAdapter] {
        return [method.adapter]
    }

    func buildRequest() throws -> URLRequest {
        let request = URLRequest(url: self.url)
        return try adapters.reduce(request) { (request, adapter) -> URLRequest in
            try adapter.adapted(request)
        }
    }
}

//??????
struct RequestContentAdapter: RequestAdapter {

    let method: HTTPMethod
    let contentType: ContentType
    let content: [String: Any]

    func adapted(_ request: URLRequest) throws -> URLRequest {
        switch method {
        case .POST:
            let headerAdapter = contentType.headerAdapter
            let dataAdapter = contentType.dataAdapter(for: content)
            let req = try headerAdapter.adapted(request)
            return try dataAdapter.adapted(req)
        case .GET:
            return try URLQueryDataAdapter(data: content).adapted(request)
        }
    }
}
