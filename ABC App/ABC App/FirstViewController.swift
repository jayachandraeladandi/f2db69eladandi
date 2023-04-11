//
//  ViewController.swift
//  ABC App
//
//  Created by Eladandi,Jayachandra S on 4/11/23.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var nationBirdTextField: UITextField!
    
    @IBOutlet weak var displayBirdBtn: UIButton!
    
    @IBOutlet weak var imgBird: UIImageView!
    
    @IBOutlet weak var animateBtn: UIButton!
    
    
    var birdsArr = [["Australia", "Emu"],
                    ["United States", "Bald_Eagle"],
                    ["Canada","Canada Jay"],
                    ["New Zealand","Kiwi"],
                    ["South Korea","Korean Magpie"]]
    
    var givenBirdName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgBird.isHidden = true
    }
    
    
    @IBAction func displayBirdAction(_ sender: UIButton) {
        let countryName = nationBirdTextField.text!
        
        for i in 0..<birdsArr.count {
            if(birdsArr[i][0] ==  countryName) {
                imgBird.isHidden = false
                givenBirdName = birdsArr[i][1]
                imgBird.image = UIImage(named: givenBirdName)
            } else if(birdsArr[i][0] ==  countryName) {
                imgBird.isHidden = false
                givenBirdName = birdsArr[i][1]
                imgBird.image = UIImage(named: givenBirdName)
            } else if(birdsArr[i][0] ==  countryName) {
                imgBird.isHidden = false
                givenBirdName = birdsArr[i][1]
                imgBird.image = UIImage(named: givenBirdName)
            } else if(birdsArr[i][0] ==  countryName) {
                imgBird.isHidden = false
                givenBirdName = birdsArr[i][1]
                imgBird.image = UIImage(named: givenBirdName)
            } else if(birdsArr[i][0] ==  countryName) {
                imgBird.isHidden = false
                givenBirdName = birdsArr[i][1]
                imgBird.image = UIImage(named: givenBirdName)
            }
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "resultSegue") {
            let destination = segue.destination as! SecondViewController
            destination.birdName = givenBirdName
        }
    }
    
    


}

