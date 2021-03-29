//
//  ViewController.swift
//  Testing
//
//  Created by Yaroslav Hrytsun on 19.03.2021.
//

import UIKit
import AuthPM

class ViewController: UIViewController {

    var authPM: AuthPM?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        authPM = AuthPM(appId: 155, deepLinkingScheme: "pmacademy", delegate: self)
        
        let newLayer = CAGradientLayer()
        newLayer.colors = [UIColor.black.cgColor, UIColor.yellow.cgColor]
        newLayer.frame = view.frame
        view.layer.insertSublayer(newLayer, at: 0)
        
        layoutUI()
    }

    func layoutUI() {
        
        guard let authPM = authPM else { return }
        let authButton = authPM.getAuthButton(toPresentInViewController: self)
        
        view.addSubview(authButton)
        
        NSLayoutConstraint.activate([
            authButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            authButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            authButton.heightAnchor.constraint(equalToConstant: 75),
            authButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
        
        authButton.addTarget(self, action: #selector(self.clickOnButton(sender:)), for: .touchUpInside)
    }
    
}

extension ViewController: AuthPMDelegate {
    func didFinishAuthorization(with profile: UserProfile?) {
        print(profile?.email ?? "")
    }
}

extension ViewController {
//
    @objc fileprivate func clickOnButton(sender: UIButton) {
        sender.flash()
    }
//
//    fileprivate func animateView(_ viewToAnimate: UIView) {
//        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseIn, animations: {
//            viewToAnimate.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
//        }) { (_) in
//            UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 2, options: .curveEaseIn, animations: {
//                viewToAnimate.transform = CGAffineTransform(scaleX: 1, y: 1)
//            }, completion: nil)
//        }
//    }
}

