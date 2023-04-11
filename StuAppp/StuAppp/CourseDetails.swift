//
//  CourseDetails.swift
//  StuAppp
//
//  Created by Eladandi,Jayachandra S on 4/11/23.
//

import Foundation

struct CourseDetails {
    var courseID = ""
    var courseName = ""
    var courseImage = ""
    var courses:[CourseDetails] = []
}

let c1 = CourseDetails(courseID: "44542", courseName: "OOPS", courseImage: "oops")
let c2 = CourseDetails(courseID: "44517", courseName: "Big Data", courseImage: "bigdata")
let c3 = CourseDetails(courseID: "44643", courseName: "Mobile Computing iOS", courseImage: "ios")

var CoursesArray:[CourseDetails] = [c1,c2,c3]
