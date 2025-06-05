//
//  WelcomeViewController.swift
//  L3.1
//
//  Created by Таня Кожевникова on 05.06.2025.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK - IB Outlets
    @IBOutlet var welcomeLabel: UILabel!
    
    //MARK - Public properties
    var user = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user)!"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
