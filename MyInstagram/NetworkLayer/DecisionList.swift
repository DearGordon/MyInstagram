//
//  DecisionList.swift
//  MyInstagram
//
//  Created by Gordon Feng on 22/12/20.
//  Copyright © 2020 GordonFeng. All rights reserved.
//

import Foundation

struct DataMapingDecision: Decision {

    let condition: (Data) -> Bool
    let transfor: (Data) -> Data

    internal init(condition: @escaping (Data) -> Bool, transfor: @escaping (Data) -> Data) {
        self.condition = condition
        self.transfor = transfor
    }

    func shouldApply<Req>(with request: Req, data: Data, response: HTTPURLResponse) -> Bool {
        return self.condition(data)
    }

    func apply<Req>(with request: Req, data: Data, response: HTTPURLResponse, completion: ((DecisionAction<Req>) -> Void)) {
        completion(.continueWtih(data, response))
    }
}

struct RefreshTokenDecision: Decision {

    func shouldApply<Req>(with request: Req, data: Data, response: HTTPURLResponse) -> Bool {
        return response.statusCode == 403
    }

    func apply<Req>(with request: Req, data: Data, response: HTTPURLResponse, completion: @escaping ((DecisionAction<Req>) -> Void)) {

        let refreshTokenRequest = RefreshTokenRequest(refreshToken: "xxxxxx")
        let client = Client(session: .shared)
        client.send(refreshTokenRequest) { (result) in
            switch result {
            case .success(_):
                let decisionWithoutRefreshToken = request.decision.removing(self)
                completion(.restartWith(decisionWithoutRefreshToken))
            case .failure(let error):
                completion(.errored(error))
            }
        }
    }

}

struct PareResultDecision: Decision {

    func shouldApply<Req>(with request: Req, data: Data, response: HTTPURLResponse) -> Bool {
        return true
    }

    func apply<Req>(with request: Req, data: Data, response: HTTPURLResponse, completion: @escaping ((DecisionAction<Req>) -> Void)) {
        do {
            let value = try JSONDecoder().decode(Req.Response.self, from: data)
            completion(.done(value))
        } catch {
            completion(.errored(error))
        }
    }
}

struct RetryDecision: Decision {
    let leftCount: Int
    func shouldApply<Req>(with request: Req, data: Data, response: HTTPURLResponse) -> Bool {
        let needRetry = (200..<300).contains(response.statusCode)
        return needRetry && leftCount > 0
    }

    func apply<Req>(with request: Req, data: Data, response: HTTPURLResponse, completion: @escaping ((DecisionAction<Req>) -> Void)) {
        let retryDecision = RetryDecision(leftCount: self.leftCount - 1)
        let decisions = request.decision.replacing(self, with: retryDecision)
        completion(.restartWith(decisions))
    }
}

struct BadResponseDecision: Decision {
    func shouldApply<Req>(with request: Req, data: Data, response: HTTPURLResponse) -> Bool {
        return !(200..<300).contains(response.statusCode)
    }

    func apply<Req>(with request: Req, data: Data, response: HTTPURLResponse, completion: @escaping ((DecisionAction<Req>) -> Void)) {
        do {
            let value = try JSONDecoder().decode(ApiError.self, from: data)
            completion(.errored(ErrorList.apiError(error: value, statusCode: response.statusCode)))
        } catch {
            completion(.errored(error))
        }
    }
}

fileprivate extension Array where Element == Decision {
    func removing(_ item: Decision) -> Array {
        print("Not implemented yet.")
        return self
    }

    func replacing(_ item: Decision, with: Decision?) -> Array {
        print("Not implemented yet.")
        return self
    }
}
