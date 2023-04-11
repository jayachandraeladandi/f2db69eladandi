//
//  SecondViewController.swift
//  BMIApp
//
//  Created by admin on 4/11/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var BMITextfeild: UILabel!
    
    var resBMI = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMITextfeild.text! = resBMI
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func ShowImgBtn(_ sender: UIButton) {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "FinalSegue"){
            let destination = segue.destination as! ThirdViewController
            destination.bmiValue = Double(resBMI)!
        }    }
    
}

