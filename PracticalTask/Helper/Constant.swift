//
//  Constant.swift
//  PracticalTask
//
//  Created by MAC on 10/05/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import Foundation
import UIKit
class Constant:NSObject{
    enum UIUserInterfaceIdiom : Int {
        case unspecified
        case phone // iPhone and iPod touch style UI
        case pad   // iPad style UI (also includes macOS Catalyst)
    }
}
extension UIView {
    static var staticIdentifier: String {
        return String(describing: self)
    }
    
}
