//
//  Wage.swift
//  window-shopper
//
//  Created by Araz Sinjary on 5/9/18.
//  Copyright © 2018 Araz Sinjary. All rights reserved.
//

import Foundation

class wage{
    //forWage is parameter name but wage is variable name.
    //forwage this is more for autocomplete when you're typing in things you can see a readable description.
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        //ceil this is math it's going to up to the next level.
        return Int(ceil(price / wage))
    }
}
