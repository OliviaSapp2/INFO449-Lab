import UIKit

var greeting = "Hello, playground"


//Protocols

import Foundation

protocol CourseCode {
    var name : String { get set}
    var department : String { get set}
    func code() -> String
}

// _each is a privte variable used to store the course code
// the _ implies that is it a private detail not meant to be accessed
// directly from outside classes
// Basically we are storing name and department directly and code privately
//I want code to be private so it is harder to manipulate
class Course : CourseCode {
    private var _each : String = ""
    init(name n : String, department d : String, codeEach c : String) {
        name = n
        department = d
        _each = c
    }
    
    var name: String
    var department : String
    
    func code() -> String { return _each }
}

//Make a course schedule
class Schedule {
    private var courses : [(String, String, String)] = []
    
    //add a class to your schedule
    func add(_ courseCode : CourseCode) {
        let newCourse = (courseCode.name, courseCode.department, courseCode.code())
        courses.append(newCourse)
    }
    
    //return a list of your courses in your schedule, just the course names
    func classList() -> String {
        var list = ""
        for course in courses {
            list += "\(course.0)\n"
        }
        return list
    }
    
    //return your schedule including, course name, department, and code
    func getSchedule() -> String {
        var output = "My classes:\n"
        for course in courses {
            output += "\(course.2) is \(course.0) which is in the \(course.1) department\n"
        }
        
        output += "------------------\n"
        return output
    }
    
}


var schedule = Schedule()

schedule.add(Course(name: "iOS Development", department:"Informatics", codeEach: "INFO449"))
schedule.add(Course(name: "Intro To Java", department:"Computer Science", codeEach: "CSE121"))

print(schedule.getSchedule())
print(schedule.classList())
