//
//  Menu.swift
//  PeretzV3
//
//  Created by Abduladzhi on 10.02.2022.
//

import Foundation
import UIKit

struct Menu {
    
    var id: Int
    var name: String
    var description: String
    var new: Bool
    var price: Int
    var image: String
    var sort: Int
    
    init?(dict:[String: AnyObject]) {
        guard let id = dict["id"] as? Int,
        let name = dict["name"] as? String,
        let description = dict["description"] as? String,
        let new = dict["new"] as? Bool,
        let price = dict["price"] as? Int,
        let image = dict["image"] as? String,
        let sort = dict["sort"] as? Int else { return nil}
        
        self.id = id
        self.name = name
        self.description = description
        self.new = new
        self.price = price
        self.image = image
        self.sort = sort
    }
}
