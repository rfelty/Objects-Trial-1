//
//  ThirdScreenViewController.swift
//  Objects Trials
//
//  Created by Rick Felty on 4/16/15.
//  Copyright (c) 2015 Rick Felty. All rights reserved.
//

import Foundation

import UIKit

class ThirdScreenViewController: UIViewController {
    
    @IBOutlet weak var myDatePicker2: UIDatePicker!
    @IBOutlet weak var selectedDate2: UITextField!
    @IBAction func datePickerAction(sender: AnyObject) {
        var dateFormatter2 = NSDateFormatter()
        dateFormatter2.dateFormat = "MMMM dd, yyyy hh:mm a"
        var strDate = dateFormatter2.stringFromDate(myDatePicker2.date)
        self.selectedDate2.text = strDate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MMMM dd, yyyy hh:mm a"
        var strDate = dateFormatter.stringFromDate(NSDate())
        self.selectedDate2.text = strDate
    }
    
    // Do any additional setup after loading the view, typically from a nib.
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}