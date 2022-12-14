//
//  File.swift
//  BreakingBadApp
//
//  Created by Hasan Esat Tozlu on 22.11.2022.
//

import UIKit

extension UIViewController {
    
    // shows alert in viewController classes
    func alert(title : String, message : String?){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let cancelButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(cancelButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    // hides keyboard when tapped on anywhere in view
    func hideKeyboardWhenTappedAround() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
}

