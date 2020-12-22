//
//  Client.swift
//  MyInstagram
//
//  Created by Gordon Feng on 22/12/20.
//  Copyright © 2020 GordonFeng. All rights reserved.
//

import Foundation

struct Client {

    let session: URLSession

    internal init(session: URLSession) {
        self.session = session
    }

    func send<Req: Request>(_ request: Req, decisions: [Decision]? = nil, handler: @escaping ((Result<Req.Response, Error>) -> Void)) {

        var urlRequest: URLRequest
        do {
            urlRequest = try request.buildRequest()
        } catch {
            handler(.failure(error))
            return
        }

        self.session.dataTask(with: urlRequest) { (data, response, error) in

            if let error = error {
                handler(.failure(error))
                return
            }

            guard let data = data else {
                handler(.failure(error ?? ErrorList.nilData))
                return
            }

            guard let response = response as? HTTPURLResponse else {
                handler(.failure(error ?? ErrorList.nonHttpResponse))
                return
            }

            self.handleDecision(request, data: data, response: response, decisions: decisions ?? request.decision, handler: handler)
        }
    }

    private func handleDecision<Req: Request>(_ request: Req, data: Data, response: HTTPURLResponse, decisions: [Decision], handler: @escaping ((Result<Req.Response, Error>) -> Void)) {

        guard decisions.isEmpty == false else {
            fatalError("there is no decisions can make in Handle Decision")
        }

        var decisions = decisions
        let current = decisions.removeFirst()

        guard current.shouldApply(with: request, data: data, response: response) else {
            self.handleDecision(request, data: data, response: response, decisions: decisions, handler: handler)
            return
        }

        current.apply(with: request, data: data, response: response) { (action) in
            switch action {
            case let .continueWtih(data, response):
                self.handleDecision(request, data: data, response: response, decisions: decisions, handler: handler)
            case .restartWith(let decisions):
                self.send(request, decisions: decisions, handler: handler)
            case .errored(let error):
                handler(.failure(error))
            case .done(let response):
                handler(.success(response))
            }
        }
    }


}
