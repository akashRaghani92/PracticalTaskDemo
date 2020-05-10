//
//  DocumentVC.swift
//  PracticalTask
//
//  Created by MAC on 10/05/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit
import SDWebImage
class DocumentVC : UIViewController {    
    
    // ----------------------------------------------------------
    
    // MARK:IBOutlet
    @IBOutlet weak var clsView: UICollectionView!
    // ----------------------------------------------------------
    
    // MARK: Variable
    var arrUserData = [UserData]()
    // ----------------------------------------------------------
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
        registerXibs()
        setup()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // ----------------------------------------------------------
    
    // MARK: Delegate
    
    
    // MARK: Custom Methods
    
    func setDelegate(){
        clsView.dataSource = self
    }
    
    private func setup()
    {
        let libro = UserData(avatar: "https://vignette.wikia.nocookie.net/characterprofile/images/7/75/Mario.png", name: "OG Mario")
        arrUserData.append(libro)
        let fire = UserData(avatar: "https://vignette.wikia.nocookie.net/characterprofile/images/c/c4/Fire_mario.png", name: "Fire Mario")
        arrUserData.append(fire)
        let tanoki = UserData(avatar: "https://vignette.wikia.nocookie.net/characterprofile/images/9/9a/Tanooki_mario.png", name: "Raccoon Mario")
        arrUserData.append(tanoki)
        let invince = UserData(avatar: "https://vignette.wikia.nocookie.net/characterprofile/images/d/d1/Invincible_Mario.png", name: "Rainbow Mario")
        arrUserData.append(invince)
        let Cloud = UserData(avatar: "https://vignette.wikia.nocookie.net/characterprofile/images/8/83/1452500936178.png", name: "Cloud Mario")
        arrUserData.append(Cloud)
        let Rabbit = UserData(avatar: "https://vignette.wikia.nocookie.net/characterprofile/images/8/87/SML2RabbitMario.png", name: "Rabbit Mario")
        arrUserData.append(Rabbit)
        let doctor = UserData(avatar: "https://vignette.wikia.nocookie.net/characterprofile/images/2/27/250px-Dr_Mario_- _Dr_Mario_Miracle_Cure.png", name: "Doctor Mario")
        arrUserData.append(doctor)
        let bee = UserData(avatar: "https://vignette.wikia.nocookie.net/characterprofile/images/5/50/1452500917700.png", name: "Bee Mario")
        arrUserData.append(bee)
        let Penguin = UserData(avatar: "https://vignette.wikia.nocookie.net/characterprofile/images/b/b4/Penguin_Mario.png", name: "Penguin Mario")
        arrUserData.append(Penguin)
        let frog = UserData(avatar: "https://vignette.wikia.nocookie.net/characterprofile/images/5/55/Frog_mario.png", name: "Frog Mario")
        arrUserData.append(frog)
        let Squirrel = UserData(avatar: "https://vignette.wikia.nocookie.net/characterprofile/images/9/9d/860px- Squirrel_Mario_NSMBU.png", name: "Squirrel Mario")
        arrUserData.append(Squirrel)
        let Turtle = UserData(avatar: "https://vignette.wikia.nocookie.net/characterprofile/images/4/47/ShellMario.png", name: "Turtle Mario")
        arrUserData.append(Turtle)
        let FlyingMario = UserData(avatar: "https://vignette.wikia.nocookie.net/characterprofile/images/3/32/684px-WingMarioSM64DS.png", name: "Flying Mario")
        arrUserData.append(FlyingMario)
        let MetalMario = UserData(avatar: "https://vignette.wikia.nocookie.net/characterprofile/images/2/23/Metal_Mario.png", name: "Metal Mario")
        arrUserData.append(MetalMario)
        let IceMario = UserData(avatar: "https://vignette.wikia.nocookie.net/characterprofile/images/6/63/Ice_Mario_2.png", name: "Ice Mario")
        arrUserData.append(IceMario)
        
    }
    private func registerXibs(){
        let nib = UINib(nibName: DocumentListTypeCVC.staticIdentifier, bundle: nil)
        clsView.register(nib, forCellWithReuseIdentifier: DocumentListTypeCVC.staticIdentifier)
        let nib1 = UINib(nibName: DocumentGridTypeCVC.staticIdentifier, bundle: nil)
        clsView.register(nib1, forCellWithReuseIdentifier: DocumentGridTypeCVC.staticIdentifier)
    }
    // MARK: Cell
    private func configureDocumentListTypeCVC(cell: DocumentListTypeCVC, indexPath: IndexPath) -> DocumentListTypeCVC{
        cell.setUI()
        let book = arrUserData[indexPath.row]
        cell.lblName.text = book.name
        cell.imgUser.sd_setImage(with: URL(string:book.avatar), placeholderImage: UIImage(named: "imgUser"))
        return cell
    }
    private func configureDocumentGridTypeCVC(cell: DocumentGridTypeCVC, indexPath: IndexPath) -> DocumentGridTypeCVC{
        cell.setUI()
        let book = arrUserData[indexPath.row]
        cell.lblName.text = book.name
        cell.imgUser.sd_setImage(with: URL(string:book.avatar), placeholderImage: UIImage(named: "imgUser"))
        return cell
    }
    
    // ----------------------------------------------------------
    
    
    // ----------------------------------------------------------
    
    // MARK: API Methods
    
    // ----------------------------------------------------------
    
    // MARK: Notification Observer
}
extension DocumentVC: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if(UIDevice.current.userInterfaceIdiom == .pad)
        {
            let width = clsView.frame.size.width/3
            return CGSize(width: width , height: 300)
            
        }
        else{
            return CGSize(width: clsView.frame.size.width, height: 150)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
}
extension DocumentVC: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrUserData.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        if(UIDevice.current.userInterfaceIdiom == .pad)
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DocumentGridTypeCVC", for: indexPath) as! DocumentGridTypeCVC
            return self.configureDocumentGridTypeCVC(cell: cell, indexPath: indexPath)
        }
        else
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DocumentListTypeCVC", for: indexPath) as! DocumentListTypeCVC
            return self.configureDocumentListTypeCVC(cell: cell, indexPath: indexPath)
        }
    }
}
