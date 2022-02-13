//
//  First sceneViewController.swift
//  PeretzV3
//
//  Created by Abduladzhi on 12.02.2022.
//

import UIKit

class First_sceneViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 4
        setLeftAlignTitleView(font: .boldSystemFont(ofSize: 24), text: "Peretz", textColor: UIColor(red: 104/255, green: 104/255, blue: 104/255, alpha: 1))
        setupNavigationBar()
        
        
    }
    func setLeftAlignTitleView(font: UIFont, text: String, textColor: UIColor) {
        guard let navFrame = navigationController?.navigationBar.frame else{
            return
        }
        
        let parentView = UIView(frame: CGRect(x: 0, y: 0, width: navFrame.width*3, height: navFrame.height))
        self.navigationItem.titleView = parentView
        
        let label = UILabel(frame: .init(x: parentView.frame.minX, y: parentView.frame.minY, width: parentView.frame.width, height: parentView.frame.height))
        label.backgroundColor = .clear
        label.numberOfLines = 2
        label.font = font
        label.textAlignment = .left
        label.textColor = textColor
        label.text = text
        
        parentView.addSubview(label)
    }
    func setupNavigationBar() {
        navigationController?.navigationBar.tintColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1)
    }
}
