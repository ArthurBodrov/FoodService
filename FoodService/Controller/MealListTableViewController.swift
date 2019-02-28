//
//  MealListTableViewController.swift
//  FoodService
//
//  Created by Arthur on 20.02.2019.
//  Copyright © 2019 Arthur. All rights reserved.
//

import UIKit

class MealListTableViewController: UITableViewController {
    var restaurant: Restaurant?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath)
        
        return cell
    }
}


