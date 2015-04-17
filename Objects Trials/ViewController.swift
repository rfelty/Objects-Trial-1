//
//  ViewController.swift
//  Objects Trials
//
//  Created by Rick Felty on 4/13/15.
//  Copyright (c) 2015 Rick Felty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
        @IBOutlet weak var selectedDate: UILabel!
    
    @IBAction func datePickerAction(sender: AnyObject) {
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy HH:mm"
        var strDate = dateFormatter.stringFromDate(myDatePicker.date)
        self.selectedDate.text = strDate
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy HH:mm"
        var strDate = dateFormatter.stringFromDate(NSDate())
                self.selectedDate.text = strDate
        }
        
        // Do any additional setup after loading the view, typically from a nib.

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class SecondScreenViewController: UIViewController {
    
}