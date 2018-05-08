//
//  ViewController.swift
//  window-shopper
//
//  Created by Araz Sinjary on 5/7/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //we are going to create UIButton in cobe not interface, and then we are going to attach text fields accessory.
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5957893729, blue: 0, alpha: 1)
        //proTip: to set text UIButton use settitle and don't use title.
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        //these tow textfield to set this button
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
    }

    @objc func calculate(){
      
        print("we got here")
    }


}

