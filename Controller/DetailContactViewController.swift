//
//  DetailViewController.swift
//  TableViewProject
//
//  Created by Nikita Shirobokov on 05.11.22.
//

import UIKit

class DetailContactViewController: UIViewController {
    
    
    @IBOutlet var contactImage: UIImageView!
    @IBOutlet var fullName: UILabel!
    @IBOutlet var email: UILabel!
    @IBOutlet var phone: UILabel!
    @IBOutlet var frameForContact: UIView!
    
    var avatarRecieved: String!
    var fullNameRecived: String!
    var phoneRecived: String!
    var emailRecived: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactImage.image = UIImage(named: avatarRecieved)
        fullName.text = fullNameRecived
        email.text = emailRecived
        phone.text = phoneRecived
        frameForContact.layer.cornerRadius = 12
        frameForContact.backgroundColor = .white
        frameForContact.layer.borderWidth = 5
        frameForContact.layer.borderColor = UIColor.gray.cgColor
        frameForContact.alpha = 0.1
    }
}


