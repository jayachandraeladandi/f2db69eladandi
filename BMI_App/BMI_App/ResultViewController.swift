//
//  ResultViewController.swift
//  BMI_App
//
//  Created by Navya Sri on 4/10/23.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var wtOL: UILabel!
    
    @IBOutlet weak var htOL: UILabel!
    
    @IBOutlet weak var bmiOL: UILabel!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var nameOL: UILabel!
    var destinationWT = ""
    var destinationHT = ""
    var destinationImage = ""
    var destinationDesc = ""
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        wtOL.text! += destinationWT
        htOL.text! += destinationHT
        bmiOL.text! += result
        imageOL.image = UIImage(named: destinationImage)
        nameOL.text! = destinationDesc
        updateAndAnimate(destinationImage)
        
    }
    
    func updateAndAnimate(_ imageName : String){
        
        var width = imageOL.frame.width
        
        width += 40
        
        var height = imageOL.frame.height
        
        height = height + 40
        
        var x  =  imageOL.frame.origin.x-20
        
        
        var y = imageOL.frame.origin.y-20
        
        var largeFrame = CGRect(x: x, y: y, width: width, height: height)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
            self.imageOL.frame = largeFrame
        })
        //making the current image opaque.
        
        UIView.animate(withDuration: 1, animations: {
            self.imageOL.alpha = 0
        })
        
        //Assign the new image with animation and make it transparent. (alpha = 1)
        
        UIView.animate(withDuration: 1, delay:0.9, animations: {
            self.imageOL.alpha = 1
            self.imageOL.image = UIImage(named: imageName)
        })
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
