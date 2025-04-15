import UIKit

var greeting = "Hello, playground"


//Protocols

import Foundation

protocol CourseCode {
    var name : String { get set}
    var department : String { get set}
    func code() -> String
}

class Course : CourseCode {
    private var _each : String = ""
    init(name n : String, department d : String, code c : String) {
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
        
    }
    
    //return a list of your courses in your schedule, just the course names
    func classList() -> String {
        var list = ""
        
        return list
    }
    
    //return your schedule including, course name, department, and code
    func getSchedule() -> String {
        var output = "My classes:\n"
         
                
        return output
    }
    
}


var schedule = Schedule()

schedule.add(Course(name: "iOS Development", department:"Informatics", code: "INFO449"))
schedule.add(Course(name: "Intro To Java", department:"Computer Science", code: "CSE121"))

print(schedule.getSchedule())
print(schedule.classList())
