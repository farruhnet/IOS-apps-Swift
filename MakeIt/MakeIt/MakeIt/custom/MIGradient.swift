//
//  MIGradient.swift
//  MakeIt
//
//  Created by apple on 2019/3/15.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

//Creating MIGradient Class
class MIGradient:UIView{
    
    var colors:[CGColor] = [
        UIColor.init(red:100, green:228, blue:255).cgColor,
        UIColor.init(red:58, green:123, blue:213).cgColor
    ]
    
    
    //Hex Co
    var hexColor:[CGColor] = [
        UIColor.blueZero.cgColor,
        UIColor.blueOne.cgColor
    ]
    
    override init(frame:CGRect){
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = hexColor
            layer.locations = [0.0 , 1.2]
        }
    }
    
    override class var layerClass:AnyClass{
        return CAGradientLayer.self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented ")
    }
}
