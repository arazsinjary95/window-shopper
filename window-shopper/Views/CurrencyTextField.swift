//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Araz Sinjary on 5/7/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import UIKit

class CurrencyTextField: UITextField {


    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2536922089)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
      
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
       
    }

}
