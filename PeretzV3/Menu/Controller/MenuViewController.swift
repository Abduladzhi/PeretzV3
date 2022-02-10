//
//  ViewController.swift
//  PeretzV3
//
//  Created by Abduladzhi on 10.02.2022.
//

import UIKit

class MenuViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var menus = [Menu]()
    override func viewDidLoad() {
        super.viewDidLoad()
        MenuNetworkService.getMenu { response in
            self.menus = response.menus
            self.tableView.reloadData()
        }
    }
}


extension MenuViewController: UITableViewDelegate {}

extension MenuViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuCell
        let menu = menus[indexPath.row]
        cell.configure(with: menu)
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }
}
