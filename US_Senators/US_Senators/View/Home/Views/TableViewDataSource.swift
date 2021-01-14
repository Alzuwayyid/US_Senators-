//
//  TableViewDataSource.swift
//  US_Senators
//
//  Created by Mohammed on 14/01/2021.
//

import UIKit

class TableViewDataSource: NSObject, UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIdentifier = "homeTableView"
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! TableViewCell
        cell.profileImageView.backgroundColor = .systemRed
        
        return cell
    }
    
}
