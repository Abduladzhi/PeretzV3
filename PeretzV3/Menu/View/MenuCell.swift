//
//  MenuCell.swift
//  PeretzV3
//
//  Created by Abduladzhi on 10.02.2022.
//

import Foundation
import UIKit


class MenuCell: UITableViewCell{
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var generalImage: UIImage!
    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var lessButton: UIButton!
    
    func configure(with menu: Menu) {
        self.nameLabel.text = menu.name
        self.descriptionLabel.text = menu.description
        self.priceLabel.text = String ("\(menu.price)₽")
    }
}
