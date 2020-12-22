//
//  RequestList.swift
//  MyInstagram
//
//  Created by Gordon Feng on 22/12/20.
//  Copyright © 2020 GordonFeng. All rights reserved.
//

import Foundation

struct InstagramRequest: Request {

    typealias Response = Json4Swift_Base

    var url: URL = URL(string: "https://www.instagram.com/")!
    var poublicAccount: String
    var method: HTTPMethod = HTTPMethod.POST
    var parameters: [String : Any] = [:]
    var contentType: ContentType = .json
    var adapters: [RequestAdapter]
    var decision: [Decision]
}

struct RefreshTokenRequest: Request {

    struct Response: Decodable {
        let token: String
    }

    let url = URL(string: "someurl")!
    let method: HTTPMethod = .POST
    let contentType: ContentType = .json

    var parameters: [String : Any] {
        return ["refreshToken": refreshToken]
    }

    let refreshToken: String

}
