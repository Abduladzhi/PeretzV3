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
        setupNavigationBar()
    }
    
    func setupNavigationBar() {
        let logo = UIImage(named: "arrow.backward")
        let imageView = UIImageView(image:logo)
        navigationController?.navigationItem.titleView = imageView
//        navigationItem.titleView = imageView
//        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.tintColor = .white
//        navigationController?.navigationBar.
//        navigationItem.largeTitleDisplayMode = .always
    }
}
