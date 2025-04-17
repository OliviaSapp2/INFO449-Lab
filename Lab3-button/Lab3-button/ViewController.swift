//
//  ViewController.swift
//  Lab3-button
//
//  Created by Olivia Sapp on 4/16/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var addButton: UIButton!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func addOne(_ sender: Any) {
        count += 1
        countLabel.text = "Count: \(count)"
    }
    

}

