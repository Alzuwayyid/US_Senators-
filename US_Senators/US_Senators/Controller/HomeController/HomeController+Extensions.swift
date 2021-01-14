//
//  Extensions+HomeController.swift
//  US_Senators
//
//  Created by Mohammed on 14/01/2021.
//

import UIKit


// MARK: - Methods
extension ViewController{
    func readJsonFile(completion: @escaping (SenatorsResponse?) -> ()){
        let decoder = JSONDecoder()
        do {
            if let file = Bundle.main.url(forResource: "us_senators", withExtension: "json"){
                let data = try Data(contentsOf: file)
                let result = try decoder.decode(SenatorsResponse.self, from: data)
                DispatchQueue.global(qos: .background).async{
                    completion(result)
                }
            }
        }
        catch {
            print(error)
        }
    }
}

// MARK: - Segue
extension ViewController{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier{
            case "FromCellToDetails":
                if let selectedIndexPath = tableView.indexPathsForSelectedRows!.first{
                    let firstLastName = "\(tableViewDataSource.senatorsData[selectedIndexPath.row].person.firstname) \(tableViewDataSource.senatorsData[selectedIndexPath.row].person.lastname)"
                    let personLink = tableViewDataSource.senatorsData[selectedIndexPath.row].person.link
                    let bioGuideID = tableViewDataSource.senatorsData[selectedIndexPath.row].title
                    let admin = tableViewDataSource.senatorsData[selectedIndexPath.row].person.bioguideid
                    let party = tableViewDataSource.senatorsData[selectedIndexPath.row].party
                    let address = tableViewDataSource.senatorsData[selectedIndexPath.row].extra.address
                    let office = tableViewDataSource.senatorsData[selectedIndexPath.row].extra.office
                    let name = tableViewDataSource.senatorsData[selectedIndexPath.row].person.name
                    let birthday = tableViewDataSource.senatorsData[selectedIndexPath.row].person.birthday
                    let endDate = tableViewDataSource.senatorsData[selectedIndexPath.row].enddate
                    let gender = tableViewDataSource.senatorsData[selectedIndexPath.row].person.gender
                    let sortName = tableViewDataSource.senatorsData[selectedIndexPath.row].person.sortname
                    let website = tableViewDataSource.senatorsData[selectedIndexPath.row].website
                    let phone = tableViewDataSource.senatorsData[selectedIndexPath.row].phone
                    
                    let decVC = segue.destination as! DetailsViewController
                    decVC.addressText = address
                    decVC.officeText = office
                    decVC.contactNameText = name
                    decVC.birthdayText = birthday
                    decVC.endDateText = endDate
                    decVC.genderText = gender
                    decVC.sortNameText = sortName
                    decVC.websiteText = website
                    decVC.phoneText = phone
                    decVC.nameText = firstLastName
                    decVC.perosnLinkLabelText = personLink
                    decVC.bioGuideIdText = bioGuideID
                    decVC.adminLabelText = admin
                    decVC.partyLabelText = party
                    decVC.typeOfImage = party
                }
            default:
                print("Could not prefrom segue")
        }
    }
}

