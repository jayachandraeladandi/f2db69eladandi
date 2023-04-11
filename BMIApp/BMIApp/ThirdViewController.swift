//
//  ThirdViewController.swift
//  BMIApp
//
//  Created by admin on 4/11/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var imageviewOutlet: UIImageView!
    
    
    var bmiValue = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageviewOutlet.frame.origin.x = view.frame.maxX
        
        if(bmiValue < 18.0) {
            imageviewOutlet.image = UIImage(named: "underweight")
        } else if(bmiValue > 18.5 && bmiValue < 24.9) {
            imageviewOutlet.image = UIImage(named: "normal")
        } else if(bmiValue >= 25 && bmiValue <= 29.9) {
            imageviewOutlet.image = UIImage(named: "overweight")
        } else {
            imageviewOutlet.image = UIImage(named: "obesity")
        }
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 3.0, delay: 0.1) {
            self.imageviewOutlet.center.x = self.view.center.x
        }
    }
    
    @IBAction func shaleMe(_ sender: UIButton) {
        var width = imageviewOutlet.frame.width
        
        width += 40
        
        var height = imageviewOutlet.frame.height
        
        height = height + 40
        
        var x  =  imageviewOutlet.frame.origin.x-20
        
        
        var y = imageviewOutlet.frame.origin.y-20
        
        var largeFrame = CGRect(x: x, y: y, width: width, height: height)
        
        var originalFrame = CGRect(x: (x+20), y: (y+20), width: (width-40), height: (height-40))
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
            self.imageviewOutlet.frame = largeFrame
            //self.imageviewOutlet.frame = originalFrame
        })
        self.imageviewOutlet.frame = originalFrame
        
    
        
        
    }
    
    
    
}
