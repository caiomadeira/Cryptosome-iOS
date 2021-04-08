//
//  ViewController.swift
//  cryptsome
//
//  Created by Caio Madeira on 09/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundView = UIImageView()
    let optionView = UIStackView()
    let logoView = UIImageView(image: #imageLiteral(resourceName: "Image"))
    
    var initialConstraints = [NSLayoutConstraint]()
    var logoConstraints = [NSLayoutConstraint]()
    
//    // MARK: - IMAGES
//    let logoImageName = "appImages/image.png"
//    let imageLogo = UIImage(named: logoImageName)
//    let ImageLogoView = UIImageView(image: ImageLogo!)
    
//
//    let principalLogoImageView: UIImageView = {
//        let logoImageView = UIImageView()
//        logoImageView.image = UIImage(named: "appImages/image.png")
//        logoImageView.translatesAutoresizingMaskIntoConstraints = false
//        return logoImageView
//    }()
//
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leadingConstraint = backgroundView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        let trailingConstraint = backgroundView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        let topConstraint = backgroundView.topAnchor.constraint(equalTo: self.view.topAnchor)
        let bottomConstraint = backgroundView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
       
        BackgroundViewFunc()
        OptionViewFunc()
        LogoViewFunc()
        
        
        // MARK: ==========================================================================
        
        let optionsleadingConstraint = optionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30)
        
        let optionstrailingConstraint = optionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30)
        
        let optionstopConstraint = optionView.topAnchor.constraint(equalTo:
            self.view.topAnchor, constant: 400)
        
        let optionsbottomConstraint = optionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100)
        
        // MARK: ==========================================================================
        
        let logoleadingConstraint = logoView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30)
        
        let logotrailingConstraint = logoView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30)
        
        let logotopConstraint = logoView.topAnchor.constraint(equalTo:
            self.view.topAnchor, constant: 100)
        
        let logobottomConstraint = logoView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -400)
        
        initialConstraints.append(contentsOf: [leadingConstraint, trailingConstraint, topConstraint, bottomConstraint, optionstopConstraint, optionsbottomConstraint, optionsleadingConstraint, optionstrailingConstraint])
        
        logoConstraints.append(contentsOf: [logotopConstraint, logobottomConstraint, logoleadingConstraint, logotrailingConstraint])
        
        
        NSLayoutConstraint.activate(initialConstraints)
        NSLayoutConstraint.activate(logoConstraints)
        
        
    }
    
    func OptionViewFunc(){
        
        optionView.backgroundColor = UIColor.red
        optionView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(optionView)
        
        
    }
    
    func LogoViewFunc(){
        
        logoView.frame = CGRect(x: 50, y: 100, width: 100, height: 100)
        logoView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(logoView)
    }

    
    func BackgroundViewFunc(){
        
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.backgroundColor = UIColor.lightBlue
        
        self.view.addSubview(backgroundView)
        
        
    }
    
}

