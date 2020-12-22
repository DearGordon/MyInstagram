//
//  ErrorList.swift
//  MyInstagram
//
//  Created by Gordon Feng on 22/12/20.
//  Copyright © 2020 GordonFeng. All rights reserved.
//

import Foundation

enum ErrorList: Error {
    case nilData
    case nonHttpResponse
    case tokenError
    case apiError(error: ApiError, statusCode: Int)
}

struct ApiError: Decodable {
    let code: Int
    let message: String
}
