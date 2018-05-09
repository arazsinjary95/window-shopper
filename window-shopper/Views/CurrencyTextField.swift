//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Araz Sinjary on 5/7/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import UIKit

//this is class attribute, we want the changes that happen in this class to show up in the interface.
@IBDesignable

class CurrencyTextField: UITextField {
    
    //this for icon currency.
    override func draw(_ rect: CGRect) {
        //width and height of label
        let size: CGFloat = 20
        //x 5 pixel from the left y in the center of textfield
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2 , width: size, height: size) )
        currencyLbl.backgroundColor = #colorLiteral(red: 0.9045930505, green: 0.8992157578, blue: 0.9087265134, alpha: 0.8535691353)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        
        //when we working on draw reck you must set clip to bounds.
        currencyLbl.clipsToBounds = true
        
        //location
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        //this for you lacation if you from iraq your currency is to be ID auto.
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        // add to textfield.
        addSubview(currencyLbl)
    }

    //we need implement func for IBDesignable
    override func prepareForInterfaceBuilder() {
        
        customizeView()
    }
    
    //this is in runtime.
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customizeView()
        }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2536922089)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        //when we working on draw reck you must set clip to bounds.
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
       
    }


}
