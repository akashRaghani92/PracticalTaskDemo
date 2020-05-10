//
//  DocumentListTypeCVC.swift
//  PracticalTask
//
//  Created by MAC on 10/05/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit

class DocumentListTypeCVC: UICollectionViewCell {

    //MARK:- Outlets -
    @IBOutlet weak var viewMain: UIView!
    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var viewPublished: UIView!
    @IBOutlet weak var viewShadow: UIView!
    @IBOutlet var lblName: UILabel!
    
    //MARK:- Setup -
    override func awakeFromNib() {
        super.awakeFromNib()
        imgUser.layer.borderWidth = 5.0
        imgUser.layer.borderColor = UIColor.white.cgColor
        self.imgUser.layer.cornerRadius = self.imgUser.frame.size.width / 2
        self.imgUser.clipsToBounds = true
    }
    func setUI(){
        Utility.addShadow(view: self.viewShadow, shadowColor: UIColor.black.withAlphaComponent(0.20).cgColor, shadowOffset: CGSize(width: 0, height: 1.5), shadowOpacity: 1.0, shadowRadius: 2, cornerRadius: 5)
    }
}
