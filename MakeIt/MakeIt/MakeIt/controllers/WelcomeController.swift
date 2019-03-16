//
//  ViewController.swift
//  MakeIt
//
//  Created by apple on 2019/3/15.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {

    let bg:UIView = {
        let view = MIGradient()
        view.layer.cornerRadius = 23
        return view
    }()
    
    
    let titleLabel = MILabel(title: "ЗАКОНЧИМ ДЕЛА!", size: 22, textAlign: .center)
    let infoLabel:UILabel = {
        let label = MILabel(title: "ДОБРО ПОЖАЛОВАТЬ\n Продолжайте формировать задачи, и выполнять их!", size: 14, textAlign: .center)
        label.numberOfLines = 3
        return label
    }()
    
    let nextButton:UIButton = MIButton(title: "НАЧАТЬ РАБОТУ")
    
    let copyRight = MILabel(title: "© 2019| MFI", color: .grayOne, size: 14, textAlign: .center)
    
    
    @objc func handleNext(){
       
        self.nextButton.transform  = CGAffineTransform(scaleX: 1, y: 1)
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.92, initialSpringVelocity: 1, options: .curveEaseIn, animations: { self.nextButton.transform  = CGAffineTransform(scaleX: 0.92, y: 0.92) }) { (_) in
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1,  options: .curveEaseIn, animations: {
                self.nextButton.transform  = CGAffineTransform(scaleX: 1, y: 1) }){
                    (_) in
                    self.present(ListController(), animated: true, completion: nil)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.addTarget(self, action: #selector(self.handleNext), for: .touchUpInside)
        view.backgroundColor = .white
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        view.addSubview(bg)
        bg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        bg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        bg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        // Do any additional setup after loading the view, typically from a nib.
        
        bg.addSubview(titleLabel)
        titleLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: bg.topAnchor, constant: 60).isActive = true
        
        bg.addSubview(infoLabel)
        infoLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        infoLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        infoLabel.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        infoLabel.centerYAnchor.constraint(equalTo: bg.centerYAnchor).isActive = true
        infoLabel.topAnchor.constraint(equalTo: bg.topAnchor, constant: 60).isActive = true
        
        bg.addSubview(nextButton)
        
        nextButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nextButton.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: bg.bottomAnchor, constant:-60).isActive = true
        
        view.addSubview(copyRight)
        copyRight.widthAnchor.constraint(equalToConstant: 200).isActive = true
        copyRight.heightAnchor.constraint(equalToConstant: 40).isActive = true
        copyRight.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        copyRight.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:-20).isActive = true
    }
}

