//
//  ViewController.swift
//  Testing
//
//  Created by Yaroslav Hrytsun on 19.03.2021.
//

import UIKit
import AuthPM

class ViewController: UIViewController {

    let auth = AuthPM(appId: "sss")
    let authButton = PMAuthButton(backgroundColor: .red, title: "Войти с помощью PM")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutUI()
        // Do any additional setup after loading the view.
    }

    
    func layoutUI() {
        authButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(authButton)
        NSLayoutConstraint.activate([
            authButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            authButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            authButton.heightAnchor.constraint(equalToConstant: 100),
            authButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }

}

