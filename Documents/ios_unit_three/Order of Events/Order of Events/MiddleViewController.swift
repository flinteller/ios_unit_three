//
//  MiddleViewController.swift
//  Order of Events
//
//  Created by Flint on 4/15/19.
//  Copyright © 2019 Flint. All rights reserved.
// Flint Eller
// 4/16/19
// This app will show the life cycle of an app


import UIKit

class MiddleViewController: UIViewController {
    
    @IBOutlet weak var MiddleLabel: UILabel!
    var eventNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let existingText = MiddleLabel.text {
            MiddleLabel.text = "\(existingText) \nEvent number \(eventNumber) was viewDidLoad"
            eventNumber += 1
        }

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let existingText = MiddleLabel.text {
            MiddleLabel.text = "\(existingText) \nEvent number \(eventNumber)"
            eventNumber += 1
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let existingText = MiddleLabel.text {
            MiddleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewDidAppear"
            eventNumber += 1
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let existingText = MiddleLabel.text {
            MiddleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewWillDisappear"
            eventNumber += 1
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let existingText = MiddleLabel.text {
            MiddleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewDidDisappear"
            eventNumber += 1
        }
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
