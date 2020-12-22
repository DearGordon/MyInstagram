//
//  RequestAdapter.swift
//  MyInstagram
//
//  Created by Gordon Feng on 22/12/20.
//  Copyright © 2020 GordonFeng. All rights reserved.
//

import Foundation

protocol RequestAdapter {
    func adapted(_ request: URLRequest) throws -> URLRequest
}

struct AnyAdapter: RequestAdapter {
    var closure: (URLRequest) -> URLRequest
    func adapted(_ request: URLRequest) throws -> URLRequest {
        return self.closure(request)
    }
}

