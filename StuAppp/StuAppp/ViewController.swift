

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var courseIDTxtField: UITextField!
    
    @IBOutlet weak var sidTxtField: UITextField!
    
    @IBOutlet weak var statusLbl: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var courseCheckBtnOutlet: UIButton!
    
    @IBOutlet weak var enrollCourseBtn: UIButton!
    
    
    var courseData = CourseDetails()
    
    var courseArr = CoursesArray
    
    var isCourseAvilable = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        courseCheckBtnOutlet.isEnabled = false
        statusLbl.isHidden = true
        img.isHidden = true
        enrollCourseBtn.isHidden = true
    }

    @IBAction func courseCheck(_ sender: UIButton) {
        let enteredCourseID = courseIDTxtField.text!
                
                //Loop the array to find the student
                for course in courseArr {
                    if enteredCourseID == course.courseID{
                        
                        //student found and store the student in a global variable.
                        courseData = course
                        //boolean flag as true,since we found a student.
                        isCourseAvilable = true
                        statusLbl.text = "\(courseIDTxtField.text!) is open for registration"
                        img.image = UIImage(named: course.courseImage)
                        statusLbl.isHidden = false
                        img.isHidden = false
                        enrollCourseBtn.isHidden = false
                    }
                }
        
        if(!isCourseAvilable) {
            isCourseAvilable = false
            statusLbl.text = "Course id not found"
            img.image = UIImage(named: "default")
            enrollCourseBtn.isHidden = true
        }
    }
    
    
    @IBAction func courseIDTextCheck(_ sender: UITextField) {
        if(courseIDTxtField.text!.isEmpty) {
            courseCheckBtnOutlet.isEnabled = false
            isCourseAvilable = false
        } else {
            courseCheckBtnOutlet.isEnabled = true
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "resultSegue") {
            let destination = segue.destination as! SecondViewController
            destination.sid = sidTxtField.text!
            destination.courseObj = courseData
        }
    }
    
    
    
    
    
    
    
}

