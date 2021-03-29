//
//  Ext+UIButton.swift
//  Testing
//
//  Created by spezza on 29.03.2021.
//

import UIKit

extension UIButton {
    
    func flash() {
        let flash = CASpringAnimation(keyPath: "opacity")
        flash.duration = 0.3
        flash.fromValue = 1
        flash.toValue = 0.1
        flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 1
        
        layer.add(flash, forKey: nil)
    }
}
