//
//  ViewController.swift
//  BMI_App
//
//  Created by Navya Sri on 4/10/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var weightOL: UITextField!
    
    @IBOutlet weak var heightOL: UITextField!
    
    var bmi = 0.0
    var image = ""
    var msg = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func CalculateBMI(_ sender: UIButton) {
        
        var wt = Double(weightOL.text!)
        var ht = Double(heightOL.text!)
        
         bmi = wt! / (ht! * ht!)
        
        
        if( bmi <= 18.4){
                    
            image = "UW"
            msg = "Under Weight"
            
        }
        
        else if(bmi >= 18.5 && bmi <= 24.9){
            
            image = "NW"
            msg = "Normal Weight"
            
        }
        
        else if(bmi >= 25.0 && bmi <= 39.9){
            
            image = "Ow"
            msg = "Over Weight"
        }
        
        else if(bmi >= 40.0){
            
            image = "obese"
            msg = "Obese"
            
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var transition = segue.identifier
        if(transition == "ResultSegue"){
            //create a destination
            var destination = segue.destination as! ResultViewController
            
            //assign values to ResultVC
            destination.destinationWT = weightOL.text!
            
            destination.destinationHT = heightOL.text!
            
            destination.result = String(bmi)
            
            destination.destinationImage = image
            
            destination.destinationDesc = msg
            
            
            
            
            
           
        }
        
        
    }
}

