//
//  ViewController.swift
//  Eladandi_Exam01
//
//  Created by Eladandi,Jayachandra S on 2/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var HeightinFeet: UITextField!
    
    
    @IBOutlet weak var HeightinInches: UITextField!
    
    
    @IBOutlet weak var PatientsWeight: UITextField!
    
    
    @IBOutlet weak var Result: UILabel!
    
    
    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func CalcBTN(_ sender: Any) {
        
        var a = Double(HeightinFeet.text!)!
        var b = Double(HeightinInches.text!)!
        var c = Double(PatientsWeight.text!)!
        var e = a*12+b
        var BMI = 703*(c/(e*e))
        var H = round(BMI)
        
    
        
        if(H<=18.5){
            ImageView.image=UIImage(named: "underWeight")
            Result.text = "Your Body Mass Index is:\(H)This is considered UnderWeight"
        }else if(H>=18.6 && H<=24.9){
            ImageView.image=UIImage(named: "normal")
            
            Result.text = "Your Body Mass Index is:\(H) This is considered normal"
        }else if(H>=25 && H<=29.9){
            ImageView.image=UIImage(named: "overWeight")
            
            Result.text = "Your Body Mass Index is:\(H) This is considered OverWeight"
        }else{
            ImageView.image=UIImage(named: "obese")
            
            Result.text = "Your Body Mass Index is:\(H)This is considered Obesity"
        }
    }
    


}

