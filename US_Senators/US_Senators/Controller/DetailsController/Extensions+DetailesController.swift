//
//  Extensions+DetailesController.swift
//  US_Senators
//
//  Created by Mohammed on 14/01/2021.
//

import UIKit


// MARK: - Methods
extension DetailsViewController{
    func styleViews(){
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
    
    func configureProperities(){
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
    }
}

