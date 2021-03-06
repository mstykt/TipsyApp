//
//  TipCalc.swift
//  TipsyApp
//
//  Created by Mesut on 17/08/16.
//  Copyright © 2016 Mesut. All rights reserved.
//

import Foundation

class TipCalc {
    private var _billAmount = 0.0
    private var _tipPercent = 0.0
    private var _tipAmount = 0.0
    private var _totalAmount = 0.0
    
    init(billAmount: Double, tipPercent: Double) {
        self._billAmount = billAmount
        self._tipPercent = tipPercent
    }
    
    var billAmount: Double {
        get {
            return _billAmount
        } set {
            _billAmount = newValue
        }
    }
    
    var tipPercent: Double {
        get {
            return _tipPercent
        } set {
            _tipPercent = newValue
        }
    }
    
    var tipAmount: Double {
        return _tipAmount
    }
    
    var totalAmount: Double {
        return _totalAmount
    }
    
    func calculateTip() {
        _tipAmount = billAmount * tipPercent
        _totalAmount = tipAmount + billAmount
    }
    
}
