//
//  ViewController.swift
//  MyInstagram
//
//  Created by Gordon Feng on 22/12/20.
//  Copyright © 2020 GordonFeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headPictureImageView: UIImageView!

    var poublicAccount = "k5fuwa"
    var url: URL {
        return URL(string: "https://www.instagram.com/\(self.poublicAccount)/?__a=1")!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.fireApi()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.headPictureImageView.layer.cornerRadius = headPictureImageView.frame.height/2
    }

    func fireApiWithClient() {
        let client = Client(session: .shared)

    }
    
    func fireApi() {
        let request = URLRequest(url: self.url)
        let session = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print(error)
                return
            }

            guard let data = data else {
                print("沒有Data")
                return
            }

//            data.prettyPrintedJSONString()
            do {
                let result = try JSONDecoder().decode(Json4Swift_Base.self, from: data)
            } catch {
                print(error)
            }

        }
        session.resume()
    }


}


fileprivate extension Data {

    /// 檢查Data的Json pretty
    /// 將印出來的Json轉成Model，可以利用此網站直接幫你生成Model檔案
    /// https://www.json4swift.com/
    func prettyPrintedJSONString() {
        guard
            let jsonObject = try? JSONSerialization.jsonObject(with: self, options: []),
            let jsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: [.prettyPrinted]),
            let prettyJSONString = String(data: jsonData, encoding: .utf8) else {
                print("Failed to read JSON Object.")
                return
        }
        print(prettyJSONString)
    }
}


/**
 https://medium.com/%E5%BD%BC%E5%BE%97%E6%BD%98%E7%9A%84%E8%A9%A6%E7%85%89-%E5%8B%87%E8%80%85%E7%9A%84-100-%E9%81%93-swift-ios-app-%E8%AC%8E%E9%A1%8C/110-%E4%B8%B2%E6%8E%A5-ig-json-api-%E8%A3%BD%E4%BD%9C-ig-%E7%9A%84%E4%BD%BF%E7%94%A8%E8%80%85-tag-%E9%A0%81%E9%9D%A2-d0e5c2df3b0e
 */
