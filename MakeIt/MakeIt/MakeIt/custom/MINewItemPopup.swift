//
//  NewItemPopup.swift
//  MakeIt
//
//  Created by apple on 2019/3/19.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class MINewItemPopup: MIGradient {
    
    let cancel = MIButton(title: "  отмена  ", type: .roundedText, radius: 4)
    let add = MIButton(title: "  добавить  ", type: .roundedText, radius: 4)
    let textField = MITextField(placeholder: "Забрать обувь", inset: 4)
    
    @objc func handleCancel()  {
        print("trying to hande Cancel")
    }
    
    @objc func handleAdd() {
        print("trying to handle add")
    }
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        self.layer.cornerRadius = 14
        let inset:CGFloat = 16
        addSubview(cancel)
        cancel.leftAnchor.constraint(equalTo: leftAnchor, constant: inset).isActive = true
        cancel.topAnchor.constraint(equalTo: topAnchor, constant: inset).isActive = true
        cancel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        cancel.addTarget(self, action: #selector(self.handleAdd), for: .touchUpInside)
        
        addSubview(add)
        add.rightAnchor.constraint(equalTo: rightAnchor, constant: -(inset)).isActive = true
        add.topAnchor.constraint(equalTo: topAnchor, constant: inset).isActive = true
        add.heightAnchor.constraint(equalToConstant: 24).isActive = true
        add.addTarget(self, action: #selector(self.handleAdd), for: .touchUpInside)
        
        
        addSubview(textField)
        textField.leftAnchor.constraint(equalTo: leftAnchor, constant: inset).isActive = true
        textField.rightAnchor.constraint(equalTo: rightAnchor, constant: -inset).isActive = true
        textField.topAnchor.constraint(equalTo: add.bottomAnchor, constant: 8).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 28)
        
    }
    

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
