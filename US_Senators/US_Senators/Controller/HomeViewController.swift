//
//  ViewController.swift
//  US_Senators
//
//  Created by Mohammed on 14/01/2021.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var tableView: UITableView!
    
    // MARK: - Properities
    let tableViewDataSource = TableViewDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Delegation and dataSourcing
        tableView.dataSource = tableViewDataSource
    }

}

