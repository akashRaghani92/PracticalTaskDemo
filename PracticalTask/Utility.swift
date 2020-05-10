//
//  Utility.swift
//  PracticalTask
//
//  Created by MAC on 10/05/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import Foundation
import UIKit

class Utility:NSObject{
    class func addShadow(view: UIView,shadowColor : CGColor, shadowOffset : CGSize, shadowOpacity : Float, shadowRadius : CGFloat, cornerRadius : CGFloat){
        view.layer.shadowColor = shadowColor
        view.layer.shadowOffset = shadowOffset
        view.layer.shadowOpacity = shadowOpacity
        view.layer.shadowRadius = shadowRadius
        view.layer.cornerRadius = cornerRadius
        if view.isKind(of: UIButton.self) || view.isKind(of: UIView.self) {
            view.layer.masksToBounds = false
        }
    }
}

