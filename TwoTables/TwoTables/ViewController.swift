//
//  ViewController.swift
//  TwoTables
//
//  Created by 黑白狗 on 2/17/23.
//

import UIKit

class Restaurant {
    var name: String
    var menu: [String]
    
    init(name: String, menu: [String]) {
        self.name = name
        self.menu = menu
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var restaurantTableView: UITableView!
    @IBOutlet weak var menuTableView: UITableView!
    
    var selectedRestaurantIndex: Int = -1
    
    var restaurants: [Restaurant] = [
        Restaurant(name: "Little Duck", menu: ["锅包肉", "冷面", "酱脊骨", "麻婆豆腐"]),
        Restaurant(name: "Diddly Squat Restaurant", menu: ["beef tartare", "ribeye steak", "beer bread", "roasted potato"]),
        Restaurant(name: "Chimac", menu: ["Pride Chicken", "Snow Wings", "Korean Wings", "Sichuan Wings"])
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == restaurantTableView {
            return restaurants.count
        } else if selectedRestaurantIndex >= 0 {
            return restaurants[selectedRestaurantIndex].menu.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if tableView == restaurantTableView {
            cell.textLabel?.text = restaurants[indexPath.row].name
        } else {
            cell.textLabel?.text = restaurants[selectedRestaurantIndex].menu[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == restaurantTableView {
            selectedRestaurantIndex = indexPath.row
            menuTableView.isHidden = false
            menuTableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuTableView.isHidden = true
    }
    
    
}

