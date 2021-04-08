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
    
    var chooseKeyLabel: UILabel{
        let chooseKey = UILabel(frame: CGRect(x: 10, y: 10, width: 335, height: 100))
        chooseKey.backgroundColor = UIColor.yellow
        chooseKey.textAlignment = .center
        chooseKey.text = "Entre com uma chave(de 1 a 255):"
        
        return chooseKey
    }
    
    var chooseKeyTextField: UITextField{
        let chooseKeyTextField = UITextField(frame: CGRect(x: 10, y: 100, width: 335, height: 40))
        chooseKeyTextField.backgroundColor = UIColor.green
        chooseKeyTextField.textColor = .black
        chooseKeyTextField.placeholder = "\tEx: 10"

//        chooseKeyTextField.text = "Ex: 10"

        return chooseKeyTextField
    }
    
    
    let chooseFile = UILabel()
    let chooseSavelocation = UILabel()
    
    
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
        
        let logoleadingConstraint = logoView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50)
        
        let logotrailingConstraint = logoView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50)
        
        let logotopConstraint = logoView.topAnchor.constraint(equalTo:
            self.view.topAnchor, constant: 50)
        
        let logobottomConstraint = logoView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -500)
        
        initialConstraints.append(contentsOf: [leadingConstraint, trailingConstraint, topConstraint, bottomConstraint, optionstopConstraint, optionsbottomConstraint, optionsleadingConstraint, optionstrailingConstraint])
        
        logoConstraints.append(contentsOf: [logotopConstraint, logobottomConstraint, logoleadingConstraint, logotrailingConstraint])
        
        
        NSLayoutConstraint.activate(initialConstraints)
        NSLayoutConstraint.activate(logoConstraints)
        
        
    }
    
    func OptionViewFunc(){
        
        optionView.backgroundColor = UIColor.red
        optionView.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        
        self.view.addSubview(optionView)
        self.optionView.addSubview(chooseKeyTextField)
        self.optionView.addSubview(chooseKeyLabel)
        
        
        
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

