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
        firstLastName.text = nameText
        perosnLinkLabel.text = perosnLinkLabelText
        bioGuideId.text = bioGuideIdText
        adminLabel.text = adminLabelText
        partyLabel.text = partyLabelText
        imageView.image = UIImage(named: typeOfImage)
        addressLabel.text = addressText
        officeLabel.text = officeText
        nameLabel.text = contactNameText
        birthdayLabel.text = birthdayText
        endDateLabel.text = endDateText
        genderLabel.text = genderText
        sortNameLabel.text = sortNameText
        websiteLabel.text = websiteText
        phoneLabel.text = phoneText
        firstIcon.image = UIImage(named: "icon1")
        secondIcon.image = UIImage(named: "icon2")
        thirdIcon.image = UIImage(named: "icon3")
        firstIcon.layer.cornerRadius = firstIcon.frame.height / 2
        secondIcon.layer.cornerRadius = secondIcon.frame.height / 2
        thirdIcon.layer.cornerRadius = thirdIcon.frame.height / 2
        
        // MARK: - Styling
        cardView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        cardView.layer.shadowOpacity = 0.15
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowRadius = 10
        cardView.layer.masksToBounds = false
        cardView.layer.cornerRadius = 12
        cardView.backgroundColor = .white
        imageView.backgroundColor = .systemGray4
        imageView.layer.borderWidth = 1
        imageView.layer.masksToBounds = false
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.cornerRadius = imageView.frame.height / 2
        imageView.clipsToBounds = true
    }
}
