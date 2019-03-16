//
//  MIButton.swift
//  MakeIt
//
//  Created by apple on 2019/3/16.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit


class MIButton:UIButton {
    
    var title:String!
    
    init(title:String = "Next"){
        super.init(frame: .zero)
        self.title = title
        self.phaseTwo()
    }
    
    func phaseTwo(){
        self.setTitle(self.title, for: .normal)
        self.layer.cornerRadius = 14
        self.backgroundColor = .white
        if let titleLabel = self.titleLabel {
            titleLabel.font = UIFont.init(name: "Raleway-v4020-SemiBold", size: 16)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Init(coder): has not been implemented! ")
    }
}
