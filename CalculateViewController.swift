//
//  CalculateViewController.swift
//  SeaCargo3
//
//  Created by elias bloemendaal on 30/10/2015.
//  Copyright © 2015 elias bloemendaal. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var element : Double = 1.0
    var valuta : Double = 1.0
    
    @IBOutlet weak var DifferentValuta: UISegmentedControl!
    @IBOutlet weak var DifferenElements: UISegmentedControl!
    @IBOutlet weak var userinputKilogram: UITextField!
    @IBOutlet weak var userinputSeamiles: UITextField!
    @IBOutlet weak var TotalPriceScreen: UILabel!
    @IBOutlet weak var PriceButton: UIButton!
    
    @IBAction func elements(sender: AnyObject) {
        let index : Int = DifferenElements.selectedSegmentIndex
        
        if index == 0 {
            element = 0.3
        }
        else if index == 1 {
            element = 0.4
        }
        else {
            element = 0.5
        }
    }
    
    @IBAction func Valutas(sender: AnyObject) {
        let index : Int = DifferentValuta.selectedSegmentIndex
        
        if index == 0 {
            valuta = 1
        }
        else{
            valuta = 1.1033 
        }
    }
    
    @IBAction func ScreenPriceButton(sender: UIButton) {
        if userinputKilogram.text == ""  {
            TotalPriceScreen.text = String("Fill everything in!")
        }
        else if userinputSeamiles.text == "" {
            TotalPriceScreen.text = String("Fill everything in!")
        }
        else{
        let totalprice : Double =  element * valuta * Double(userinputKilogram.text!)! * Double(userinputSeamiles.text!)!
        TotalPriceScreen.text = String(totalprice)
        }
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.PriceButton.setTitle("PRICE", forState: UIControlState.Normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
