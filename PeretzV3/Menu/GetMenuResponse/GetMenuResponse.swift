//
//  GetMenuResponse.swift
//  PeretzV3
//
//  Created by Abduladzhi on 10.02.2022.
//

import Foundation
struct GetMenuResponse {
    typealias JSON = [String: AnyObject]
    let menus: [Menu]
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.failInternetError }
        
        var menus = [Menu]()
        for dictionary in array {
            guard let menu = Menu(dict: dictionary) else { continue }
            menus.append(menu)
        }
        self.menus = menus
    }
}
