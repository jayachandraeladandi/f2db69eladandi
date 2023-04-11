//
//  ViewController.swift
//  BMIApp
//
//  Created by admin on 4/11/23.
//

import UIKit

class FirstViewController: UIViewController {

    
    
    
    @IBOutlet weak var heightOutlet: UITextField!
    
    
    @IBOutlet weak var heightinchesoutelet: UITextField!
    
    
    @IBOutlet weak var weightOutlet: UITextField!
    
    var BMI = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    
    @IBAction func CalBMIBtn(_ sender: UIButton) {
        let height = Double(heightOutlet.text!)
        let weight = Double(weightOutlet.text!)
        let height2 = Double(heightinchesoutelet.text!)
        let finalheight = ((height!*12)+height2!)
        
        BMI = String(round((703*(weight!))/((finalheight * finalheight))))
     
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "ResultSegue"){
            let destination = segue.destination as! SecondViewController
            destination.resBMI = BMI
            heightinchesoutelet.text = ""
            weightOutlet.text = ""
            heightOutlet.text = ""
            
            
            
        }
    }
    
}

