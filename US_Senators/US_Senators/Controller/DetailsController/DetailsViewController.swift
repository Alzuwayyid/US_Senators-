//
//  DetailsViewController.swift
//  US_Senators
//
//  Created by Mohammed on 14/01/2021.
//

import UIKit

class DetailsViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var cardView: UIView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var firstLastName: UILabel!
    @IBOutlet var perosnLinkLabel: UILabel!
    @IBOutlet var bioGuideId: UILabel!
    @IBOutlet var adminLabel: UILabel!
    @IBOutlet var partyLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    @IBOutlet var officeLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var birthdayLabel: UILabel!
    @IBOutlet var endDateLabel: UILabel!
    @IBOutlet var genderLabel: UILabel!
    @IBOutlet var sortNameLabel: UILabel!
    @IBOutlet var websiteLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var firstIcon: UIImageView!
    @IBOutlet var secondIcon: UIImageView!
    @IBOutlet var thirdIcon: UIImageView!
    
    // MARK: - Properities
    var nameText = ""
    var perosnLinkLabelText = ""
    var bioGuideIdText = ""
    var adminLabelText = ""
    var partyLabelText = ""
    var typeOfImage = ""
    var addressText = ""
    var officeText = ""
    var contactNameText = ""
    var birthdayText = ""
    var endDateText = ""
    var genderText = ""
    var sortNameText = ""
    var websiteText = ""
    var phoneText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: - Confoguration
        configureProperities()
        
        // MARK: - Styling
        styleViews()
    }
    @IBAction func dismissViewController(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}

