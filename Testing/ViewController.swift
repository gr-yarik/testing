//
//  ViewController.swift
//  Testing
//
//  Created by Yaroslav Hrytsun on 19.03.2021.
//

import UIKit
import AuthPM

class ViewController: UIViewController {

    let authPM = AuthPM(appId: "sss")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutUI()
    }

    
    func layoutUI() {
        let authButton = authPM.getAuthButton(toPresentInViewController: self)
        
        view.addSubview(authButton)
        
        NSLayoutConstraint.activate([
            authButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            authButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            authButton.heightAnchor.constraint(equalToConstant: 100),
            authButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }

}

