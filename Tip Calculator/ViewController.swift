//
//  ViewController.swift
//  Tip Calculator
//
//  Created by nburns on 10/2/15.
//  Copyright (c) 2015 nburns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalBillTextField: UITextField!
    @IBOutlet weak var myTipLabel: UILabel!
    @IBOutlet weak var myTotalAmountLabel: UILabel!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var tipAmountPerPersonLabel: UILabel!
    
    @IBOutlet weak var totalAmountPerPerson: UILabel!
    @IBOutlet weak var fifteenButton: UIButton!
   
    @IBOutlet weak var amountOfPeopleLabel: UILabel!

    @IBOutlet weak var twentyButton: UIButton!
    
    @IBOutlet weak var twentyFiveButton: UIButton!
    
    var people = 1.0
    
    
    
    @IBAction func upArrow(sender: AnyObject)
    {
        ++people
        amountOfPeopleLabel.text = "\(people)"
    }
    
    @IBAction func downArrow(sender: AnyObject)
    {
        if people > 1
        {
        --people
        
        }
        amountOfPeopleLabel.text = "\(people)"
            
    }
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    @IBAction func tenButtonPressed(sender: AnyObject)
    {
        
        calculateTip(0.1)
        tenButton.setImage(UIImage(named: "10_unselected_image"), forState: UIControlState.Normal)
        fifteenButton.setImage(UIImage(named: "15_selected_image"), forState: UIControlState.Normal)

        twentyButton.setImage(UIImage(named: "20_selected_image"), forState: UIControlState.Normal)
        twentyFiveButton.setImage(UIImage(named: "25_selected_image"), forState: UIControlState.Normal)
        
           }
    
    
    
    @IBAction func fifteenButtonPressed(sender: AnyObject)
    {
        calculateTip( 0.15)
        fifteenButton.setImage(UIImage(named: "15_unselected_image"), forState: UIControlState.Normal)
        tenButton.setImage(UIImage(named: "10_selected_image"), forState: UIControlState.Normal)
        twentyButton.setImage(UIImage(named: "20_selected_image"), forState: UIControlState.Normal)
        twentyFiveButton.setImage(UIImage(named: "25_selected_image"), forState: UIControlState.Normal)
    }
    func calculateTip(tipPercentage: Double)
    {
        var subTotal = ((totalBillTextField.text!) as NSString).doubleValue
        let tipAmount = (subTotal * tipPercentage) / people
        let totalAmount = (subTotal + tipAmount) / people
        
        myTipLabel.text = String(format: "$ %.2f", tipAmount)
        myTotalAmountLabel.text = String(format: "$ %.2f", totalAmount)
        tipAmountPerPersonLabel.text = String(format: "$ %.2f", tipAmount)
        totalAmountPerPerson.text = String(format: "$ %.2f", totalAmount)
        totalBillTextField.resignFirstResponder()
    }
    
    
    
        
        
        
        
        @IBAction func twentyButtonPressed(sender: AnyObject)
    {
        calculateTip(0.20)
        twentyButton.setImage(UIImage(named: "20_unselected_image"), forState: UIControlState.Normal)
        tenButton.setImage(UIImage(named: "10_selected_image"), forState: UIControlState.Normal)
        fifteenButton.setImage(UIImage(named: "15_selected_image"), forState: UIControlState.Normal)
        twentyFiveButton.setImage(UIImage(named: "25_selected_image"), forState: UIControlState.Normal)

    
    
    }
    
   
        
        
        
        
        @IBAction func twentyFiveButtonPressed(sender: AnyObject)
    {
        calculateTip(0.25)
        twentyFiveButton.setImage(UIImage(named: "25_unselected_image"), forState: UIControlState.Normal)
        tenButton.setImage(UIImage(named: "10_selected_image"), forState: UIControlState.Normal)
        
        fifteenButton.setImage(UIImage(named: "15_selected_image"), forState: UIControlState.Normal)
        twentyButton.setImage(UIImage(named: "20_selected_image"), forState: UIControlState.Normal)

    }
    
    
    
}

