//
//  View2Controller.swift
//  lab5
//
//  Created by Olivia Sapp on 4/28/25.
//

import UIKit

class View2Controller: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    //this is the data that was passed from the origional view controller
    var receivedData: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let data = receivedData {
            textLabel.text = "you selected the \(data) cell"
        } else {
            textLabel.text = "Did not click on cell"
        }

        // Do any additional setup after loading the view.
    }
}
