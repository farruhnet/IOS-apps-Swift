//
//  MILabel.swift
//  MakeIt
//
//  Created by apple on 2019/3/15.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class MILabel:UILabel{
    init(title:String = "default", color:UIColor = .white, size:CGFloat  = 16, frame:CGRect = .zero,
         textAlign: NSTextAlignment = .left) {
        super.init(frame:frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        self.text = title
        self.textColor = color
        self.font = UIFont.init(name: "Raleway-v4020-SemiBold", size: size)
        self.textAlignment  = textAlign
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented ")
    }
}
