//
//  ViewController.swift
//  TipsyApp
//
//  Created by Mesut on 16/08/16.
//  Copyright © 2016 Mesut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - @IBOutlets
    @IBOutlet weak var headView: UIView!
    @IBOutlet weak var headLbl: UILabel!
    @IBOutlet weak var billAmountText: UITextField!
    @IBOutlet weak var tipPercentLbl: UILabel!
    @IBOutlet weak var tipPercentSld: UISlider!
    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var totalAmountLbl: UILabel!
    
    
    // MARK: - @Properties
    var tipCalc = TipCalc(billAmount: 0.0, tipPercent: 0.0)
    
    
    // MARK: - Initialize Views
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - @IBActions
    @IBAction func billAmountChanges(_ sender: AnyObject) {
        calcTip()
        print("value changed")
        updateUI()
        
    }
    
    @IBAction func tipSliderValueChanges(_ sender: AnyObject) {
        print("slider changed")
        tipPercentLbl.text = "Tip: \(Int(tipPercentSld.value * 100))%"
        calcTip()
        updateUI()
    }
    
    // MARK: - Functions
    func calcTip() {
        tipCalc.tipPercent = Double(tipPercentSld.value)
        tipCalc.billAmount = ((billAmountText.text)! as NSString).doubleValue
        
        tipCalc.calculateTip()
    }
    
    func updateUI() {
        //tipAmountLbl.text = "$" + tipCalc.tipAmount.description
        tipAmountLbl.text = String(format: "$%0.2f", tipCalc.tipAmount)
        totalAmountLbl.text = String(format: "$%0.2f", tipCalc.totalAmount)
    }


}

