//
//  TableViewDataSource.swift
//  US_Senators
//
//  Created by Mohammed on 14/01/2021.
//

import UIKit

class TableViewDataSource: NSObject, UITableViewDataSource, UITableViewDelegate{
    var senatorsData = [Object]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return senatorsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIdentifier = "homeTableView"
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! TableViewCell
        
        // Check the party
        if senatorsData[indexPath.row].party == "Republican"{
            cell.profileImageView.image = UIImage(named: "Republican")
        }
        else{
            cell.profileImageView.image = UIImage(named: "Democrat")
        }
        
        // Filling the cell
        cell.profileImageView.backgroundColor = .systemGray4
        cell.name.text = "\(senatorsData[indexPath.row].person.firstname) \(senatorsData[indexPath.row].person.lastname)"
        cell.party.text = senatorsData[indexPath.row].party
        cell.desc.text = senatorsData[indexPath.row].objectDescription
        
        // Styling the cell
        cell.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        cell.layer.shadowOpacity = 0.9
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowRadius = 9.0
        cell.layer.masksToBounds = false
        cell.layer.borderWidth = 0.1
        
        return cell
    }
    
}
