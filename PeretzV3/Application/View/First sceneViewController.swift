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
        setupNavigationBar()
        
    }
    
    func setupNavigationBar() {
        navigationController?.navigationBar.tintColor = .white
        
        

    }
}
