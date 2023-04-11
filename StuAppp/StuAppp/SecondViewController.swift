//
//  SecondViewController.swift
//  StuAppp
//
//  Created by Eladandi,Jayachandra S on 4/11/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var sidLbl: UILabel!
    
    
    @IBOutlet weak var successLbl: UILabel!
    
    
    @IBOutlet weak var imgVIew: UIImageView!
    
    var sid = ""
    
    var courseObj = CourseDetails()

    override func viewDidLoad() {
        super.viewDidLoad()
        sidLbl.text = " Your Student ID is \(sid)"
        successLbl.text = "You have succesasfully enrolled in \(courseObj.courseID), \(courseObj.courseName)"
        imgVIew.image = UIImage(named: courseObj.courseImage)
        
        imgVIew.frame = CGRect(x: 100, y: 300, width: 200, height: 200)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2.0, delay: 0.1, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.8) {
            self.imgVIew.frame = CGRect(x: 100, y: 300, width: 240, height: 240)
        }
        imgVIew.frame = CGRect(x: 100, y: 300, width: 200, height: 200)
    }
    

   

}
