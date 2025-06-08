//
//  AboutMeViewController.swift
//  L3.1
//
//  Created by Таня Кожевникова on 08.06.2025.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = user.person.fullName
        
        
    }
}
