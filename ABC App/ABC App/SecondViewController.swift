//
//  SecondViewController.swift
//  ABC App
//
//  Created by Eladandi,Jayachandra S on 4/11/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var imgBirdOutlet: UIImageView!
    
    
    var birdName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        imgBirdOutlet.image = UIImage(named: birdName)
        
    }
    
    
    @IBAction func rightCornerBtnAction(_ sender: UIButton) {
        UIView.animate(withDuration: 2.0) {
            self.imgBirdOutlet.frame.origin.x = self.view.frame.width - self.imgBirdOutlet.frame.width
            self.imgBirdOutlet.frame.origin.y = self.view.frame.height - self.imgBirdOutlet.frame.height
        }
        
    }
    

    @IBAction func leftCornerBtnAction(_ sender: UIButton) {
        UIView.animate(withDuration: 2.0) {
            self.imgBirdOutlet.frame.origin.x = 0
            self.imgBirdOutlet.frame.origin.y = 0
        }
    }
    

}
