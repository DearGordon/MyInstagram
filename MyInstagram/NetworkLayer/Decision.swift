//
//  Decision.swift
//  MyInstagram
//
//  Created by Gordon Feng on 22/12/20.
//  Copyright © 2020 GordonFeng. All rights reserved.
//

import Foundation

protocol Decision {
    func shouldApply<Req: Request>(with request: Req, data: Data, response: HTTPURLResponse) -> Bool
    func apply<Req: Request>(with request: Req, data: Data, response: HTTPURLResponse, completion: @escaping ((DecisionAction<Req>) -> Void))
}

enum DecisionAction<Req: Request> {
    case continueWtih(Data, HTTPURLResponse)
    case restartWith([Decision])
    case errored(Error)
    case done(Req.Response)
}
