//
//  ViewController.swift
//  Lesson 15 DZ alert
//
//  Created by Кирилл Курочкин on 20.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func alerButtonPressed(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Login", message: "Enter your credentials", preferredStyle: .alert)
        alertController.addTextField { (textField) in
                   textField.placeholder = "Login"
               }
               alertController.addTextField { (textField) in
                   textField.placeholder = "Password"
                   textField.isSecureTextEntry = true
               }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
              let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
                  if let loginTextField = alertController.textFields?.first,
                     let passwordTextField = alertController.textFields?.last {
                      if loginTextField.text == "1234" && passwordTextField.text == "5555" {
                          // Correct login and password
                          self.showAlert(title: "Success", message: "Login successful!")
                      } else {
                          // Incorrect login or password
                          self.showAlert(title: "Error", message: "Incorrect login or password")
                      }
                  }
              }
        alertController.addAction(cancelAction)
                alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)

    }
    func showAlert(title: String, message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
}

