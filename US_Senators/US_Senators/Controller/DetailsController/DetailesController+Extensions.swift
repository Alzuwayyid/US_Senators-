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
    
    func animateViews(){
        let jump = CASpringAnimation(keyPath: "transform.scale")
        jump.damping = 9
        jump.mass = 1
        jump.initialVelocity = 50
        jump.stiffness = 500.0
        jump.fromValue = 4.0
        jump.toValue = 1.0
        jump.duration = jump.settlingDuration
        
        let animation = CABasicAnimation(keyPath: "position.x")
        animation.fromValue = view.bounds.size.width - 440
        animation.toValue = CGPoint(x: 210, y: 210)
        animation.duration = 0.9
        animation.beginTime = CACurrentMediaTime() + 0.0
        animation.repeatCount = 1
        animation.autoreverses = false
        
        let hiddenAnimation = CABasicAnimation(keyPath: "hidden")
        hiddenAnimation.fromValue = 1
        hiddenAnimation.toValue = 0
        hiddenAnimation.duration = 1.6
        hiddenAnimation.beginTime = CACurrentMediaTime() + 0.1
        hiddenAnimation.repeatCount = 1
        hiddenAnimation.autoreverses = false
        
        firstLastName.layer.add(hiddenAnimation, forKey: nil)
        perosnLinkLabel.layer.add(hiddenAnimation, forKey: nil)
        bioGuideId.layer.add(hiddenAnimation, forKey: nil)
        adminLabel.layer.add(hiddenAnimation, forKey: nil)
        partyLabel.layer.add(hiddenAnimation, forKey: nil)
        firstIcon.layer.add(hiddenAnimation, forKey: nil)
        secondIcon.layer.add(hiddenAnimation, forKey: nil)
        thirdIcon.layer.add(hiddenAnimation, forKey: nil)
        imageView.layer.add(jump, forKey: nil)
        addressLabel.layer.add(animation, forKey: nil)
        nameLabel.layer.add(animation, forKey: nil)
        officeLabel.layer.add(animation, forKey: nil)
        birthdayLabel.layer.add(animation, forKey: nil)
        endDateLabel.layer.add(animation, forKey: nil)
        genderLabel.layer.add(animation, forKey: nil)
        sortNameLabel.layer.add(animation, forKey: nil)
        websiteLabel.layer.add(animation, forKey: nil)
        phoneLabel.layer.add(animation, forKey: nil)
    }
}
