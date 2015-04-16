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
    
    @IBAction func datePickerAction(sender: AnyObject) {
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy HH:mm"
        var strDate = dateFormatter.stringFromDate(myDatePicker.date)
        self.selectedDate.text = strDate
        
    }
    
    func saveChosenDate(date:NSDate){
        NSUserDefaults.standardUserDefaults().setObject(date, forKey: "chosenDate")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    @IBOutlet weak var selectedDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        func loadChosenDate()-> NSDate{
            return NSUserDefaults.standardUserDefaults().objectForKey("chosenDate") as! NSDate
        }

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

