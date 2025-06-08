//
//  AboutMeViewController.swift
//  L3.1
//
//  Created by Таня Кожевникова on 08.06.2025.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var nameUserLabel: UILabel!
    @IBOutlet var surNameUserLabel: UILabel!
    @IBOutlet var ageUserLabel: UILabel!
    @IBOutlet var placeOfWorkUserLabel: UILabel!
    @IBOutlet var emailUserLabel: UILabel!
    @IBOutlet var hobbyUserLabel: UILabel!
    @IBOutlet var moreInfoUserLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = user.person.fullName
        nameUserLabel.text = user.person.name
        surNameUserLabel.text = user.person.surName
        ageUserLabel.text = user.person.age.description
        placeOfWorkUserLabel.text = user.person.placeOfWork
        emailUserLabel.text = user.person.email
        hobbyUserLabel.text = user.person.hobby
        moreInfoUserLabel.text = user.person.aboutPerson
        
        
    }
}
