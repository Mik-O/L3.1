//
//  ViewController.swift
//  L3.1
//
//  Created by Таня Кожевникова on 05.06.2025.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: -IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private properties
    private let user = "User"
    private let password = "Password"
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.user = user
    }
  
    // MARK: - IB Action
    @IBAction func LogInPressed() {
        if userNameTextField.text != user || passwordTextField.text != password {
            showAlert(
                title: "Invalid login or password",
                message: "Pleace, enter correct login and password"
            )
            return
        }
        
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotUserNamePressed(_ sender: UIButton) {
        showAlert(title: "Oops!",
                  message: "Your name is \(user) 😉")
    }
    
    @IBAction func forgotPassword() {
        showAlert(title: "Oops!",
                  message: "Your password is \(password) 😉")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField .text = nil
        passwordTextField.text = nil
    }
}

//MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                textField?.text = nil
            }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

//MARK: - Work with keyboard
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            LogInPressed()
        }
        return true
    }
}
