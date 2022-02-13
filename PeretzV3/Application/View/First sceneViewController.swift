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
        navigationController?.navigationBar.tintColor = .white
        
        
//        let label = UILabel()
//        label.text = "Title Label"
//        label.textAlignment = .left
//        self.navigationItem.titleView = label
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.superview?.addConstraint(NSLayoutConstraint(item: label, attribute: .centerX, relatedBy: .equal, toItem: label.superview, attribute: .centerX, multiplier: 1, constant: 0))
//        label.superview?.addConstraint(NSLayoutConstraint(item: label, attribute: .width, relatedBy: .equal, toItem: label.superview, attribute: .width, multiplier: 1, constant: 0))
//        label.superview?.addConstraint(NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: label.superview, attribute: .centerY, multiplier: 1, constant: 0))
//        label.superview?.addConstraint(NSLayoutConstraint(item: label, attribute: .height, relatedBy: .equal, toItem: label.superview, attribute: .height, multiplier: 1, constant: 0))
//        navigationItem.title = "Peretz"
//        navigationItem.title.
        
        
//        let backButton = UIBarButtonItem()
//        backButton.image = .none
//        backButton.image = UIImage(systemName: "arrow.backward")
//        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        
        
        
        
        
//        navigationController?.navigationBar.barTintColor = .white
        
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
    }
}
