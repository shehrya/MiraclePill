//
//  ViewController.swift
//  MiraclePill
//
//  Created by Shehryar Khan on 11.05.17.
//  Copyright © 2017 Shehryar Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    let states = ["Baden-Württemberg","Bavaria","Berlin","Bayern","Brandenburg","Bremen","Hamburg","Hessen","Niedersachsen","Mecklenburg-Vorpommern","Nordrhein-Westfalen","Rheinland-Pfalz","Saarland","Sachsen","Sachsen-anhalt","Schleswig-Holstein","Thüringen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        self.view.backgroundColor = UIColor.gray
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: UIButton) {
        statePicker.isHidden = false
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        }
    
    @IBAction func BuyNowBtn(_ sender: UIButton) {
        for i in 1...14 {
            self.view.viewWithTag(i)?.isHidden = true
            
        
        }
    }
}

