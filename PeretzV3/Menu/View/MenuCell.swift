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
    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var lessButton: UIButton!
    @IBOutlet weak var bigImage: UIImageView!
    @IBOutlet weak var newLabel: UILabel!
    var number = 0
    @IBAction func pressMinus(_ sender: UIButton) {
        self.lessButton.isHidden = false
        self.numberLabel.isHidden = false
        if number == 0{
            self.numberLabel.text = String(number)
            self.lessButton.isHidden = true
            self.numberLabel.isHidden = true
        }else {
            number = number - 1
            self.numberLabel.text = String(number)
        }
    }
    
    @IBAction func pressPlus(_ sender: UIButton) {
        self.lessButton.isHidden = false
        self.numberLabel.isHidden = false
        number = number + 1
        self.numberLabel.text = String(number)
    }
    
    func configure(with menu: Menu) {
        if menu.new == false{
            self.newLabel.text = "NEW"
            self.newLabel.textColor = .white
            self.newLabel.backgroundColor = UIColor(red: 247/255, green: 166/255, blue: 0/255, alpha: 1)
            self.newLabel.layer.cornerRadius = 2
        }
        
        self.lessButton.isHidden = true
        self.numberLabel.isHidden = true
        self.nameLabel.text = menu.name
        self.descriptionLabel.text = menu.description
        self.priceLabel.text = String ("\(menu.price)₽")
        self.lessButton.layer.cornerRadius = lessButton.frame.height/2
        self.moreButton.layer.cornerRadius = moreButton.frame.height/2
        self.bigImage.downloaded(from: menu.image)
    }
    
}

