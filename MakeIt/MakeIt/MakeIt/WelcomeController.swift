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
        let view = UIView()
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 6
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(bg)
        bg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        bg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 20).isActive = true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20).isActive = true
        // Do any additional setup after loading the view, typically from a nib.
    }


}

