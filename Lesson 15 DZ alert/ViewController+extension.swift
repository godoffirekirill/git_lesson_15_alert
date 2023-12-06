//
//  ViewController+extension.swift
//  Lesson 15 DZ alert
//
//  Created by Кирилл Курочкин on 21.10.2023.
//

import Foundation
import UIKit
extension UIViewController {
    func showAlert(title: String, message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }

    func showAlert(title: String, message: String, onOK: (() -> Void)?, onCancel: (() -> Void)?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            onOK?()
        }
        alert.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            onCancel?()
        }
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
    }
}
