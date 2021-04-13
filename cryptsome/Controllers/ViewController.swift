//
//  ViewController.swift
//  cryptsome
//
//  Created by Caio Madeira on 09/03/21.
//

import UIKit
import MobileCoreServices


class ViewController: UIViewController {
    
    let backgroundView = UIImageView()
    let optionView = UIStackView()
    let logoView = UIImageView(image: #imageLiteral(resourceName: "Image"))
    
    var initialConstraints = [NSLayoutConstraint]()
    var logoConstraints = [NSLayoutConstraint]()
    
    var chooseKeyLabel: UILabel{
        let chooseKey = UILabel(frame: CGRect(x: 10, y: 10, width: 335, height: 50))
        chooseKey.backgroundColor = UIColor.yellow
        chooseKey.textAlignment = .center
        chooseKey.text = "Entre com uma chave(de 1 a 255):"
        
        return chooseKey
    }
    
    var chooseKeyTextField: UITextField{
        let chooseKeyTextField = UITextField(frame: CGRect(x: 10, y: 50, width: 335, height: 40))
        chooseKeyTextField.backgroundColor = UIColor.green
        chooseKeyTextField.textColor = .black
        chooseKeyTextField.placeholder = "\tEx: 10"

//        chooseKeyTextField.text = "Ex: 10"

        return chooseKeyTextField
    }
    
    
    var chooseFileLabel: UILabel{
        let chooseFile = UILabel(frame: CGRect(x: 10, y: 90, width: 335, height: 50))
        chooseFile.backgroundColor = UIColor.yellow
        chooseFile.textAlignment = .center
        chooseFile.text = "Escolha o arquivo:"
        
        return chooseFile
    }
    
    
    var chooseFileButton: UIButton{
        let chooseFileBtn = UIButton(frame: CGRect(x: 10, y: 140, width: 335, height: 50))
        chooseFileBtn.backgroundColor = UIColor.black
        chooseFileBtn.setTitle("Escolha", for: .normal)
        chooseFileBtn.addTarget(self, action: #selector(chooseFileButtonClicked(_ :)), for: .touchUpInside)



        return chooseFileBtn
    }

        
    var chooseSaveFileLabel: UILabel{
        let chooseSaveFile = UILabel(frame: CGRect(x: 10, y: 190, width: 335, height: 50))
        chooseSaveFile.backgroundColor = UIColor.yellow
        chooseSaveFile.textAlignment = .center
        chooseSaveFile.text = "Escolha onde quer salvar:"
        
        return chooseSaveFile
    }
    
    var chooseFileSaveButton: UIButton{
        let chooseFileSaveBtn = UIButton(frame: CGRect(x: 10, y: 230, width: 335, height: 50))
        chooseFileSaveBtn.backgroundColor = UIColor.black
        chooseFileSaveBtn.setTitle("Salvar", for: .normal)
        chooseFileSaveBtn.addTarget(self, action: #selector(chooseSaveButtonClicked(_ :)), for: .touchUpInside)

        return chooseFileSaveBtn
    }
    
    var cryptoButton: UIButton{
        let cryptoBtn = UIButton(frame: CGRect(x: 10, y: 295, width: 335, height: 50))
        cryptoBtn.backgroundColor = UIColor.black
        cryptoBtn.setTitle("Criptografar", for: .normal)
        cryptoBtn.addTarget(self, action: #selector(cryptoButtonClicked(_ :)), for: .touchUpInside)

        return cryptoBtn
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
        self.optionView.addSubview(chooseKeyTextField) // Type key
        self.optionView.addSubview(chooseKeyLabel) // escolha uma chave
        self.optionView.addSubview(chooseFileLabel) // escolha o arquivo
        self.optionView.addSubview(chooseFileButton) // btn escolha o arquivo
        self.optionView.addSubview(chooseSaveFileLabel) // escolha onde quuer salvar
        self.optionView.addSubview(chooseFileSaveButton) // BTN escolha onde quuer salvar
        self.optionView.addSubview(cryptoButton) // escolha onde quuer salvar
        
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
    
    // sender = obj who activate func
    @objc func chooseFileButtonClicked(_ : UIButton){
        print("Botao FILE pressionado")
        
        let documentPicker = UIDocumentPickerViewController(documentTypes: [kUTTypePlainText as String], in: .import)
        documentPicker.delegate = self
        documentPicker.allowsMultipleSelection = false
        present(documentPicker, animated: true, completion: nil)
        
       
    }
    
    @objc func chooseSaveButtonClicked(_ : UIButton){
        print("Botao SAVE pressionado")
        
        let file = "\(UUID().uuidString).txt"
        let contents = "Texto"
        
        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let fileURL = dir.appendingPathComponent(file)
        print(fileURL)
        
        do {
            try contents.write(to: fileURL, atomically: false, encoding: .utf8)
            print("SALVO")
        }
        catch{
            print("Error: \(error)")
        }
    }
    
    @objc func cryptoButtonClicked(_ : UIButton){
        print("CRIPTOGRAFANDO...")
        
    }
    
}

extension ViewController: UIDocumentPickerDelegate{
    
    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
        
        guard let selectedFileURL = urls.first else {
            return
        }
        
        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        let sandboxFileURL = dir.appendingPathComponent(selectedFileURL.lastPathComponent)
        
        if FileManager.default.fileExists(atPath: sandboxFileURL.path){
            print("arquiivo ja existe. [mostrar pop-up]")
        }
        else {
            
            do {
                try FileManager.default.copyItem(at: selectedFileURL, to: sandboxFileURL)
                
                print("arquivo copiado c/ sucesso")
                
            }
            catch{
                print("Erro: \(error)")
            }
        }
        
    }
    
}
