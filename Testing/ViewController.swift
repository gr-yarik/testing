//
//  ViewController.swift
//  Testing
//
//  Created by Yaroslav Hrytsun on 19.03.2021.
//

import UIKit
import AuthPM

class ViewController: UIViewController {

    let authPM = AuthPM(appId: 1, deepLinkingScheme: "pmacademy")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newLayer = CAGradientLayer()
        newLayer.colors = [UIColor.black.cgColor, UIColor.yellow.cgColor]
        newLayer.frame = view.frame
        view.layer.insertSublayer(newLayer, at: 0)
        
        layoutUI()
    }

    
    func layoutUI() {
        let authButton = authPM.getAuthButton(toPresentInViewController: self)
        
        view.addSubview(authButton)
        
        NSLayoutConstraint.activate([
            authButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            authButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            authButton.heightAnchor.constraint(equalToConstant: 75),
            authButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70)
        ])
    }

}

