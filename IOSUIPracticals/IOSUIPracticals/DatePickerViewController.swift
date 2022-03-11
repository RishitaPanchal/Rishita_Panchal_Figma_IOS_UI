//
//  DatePickerViewController.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 08/03/22.
//

import UIKit

class DatePickerViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var selectedDatee: UITextField!
    @IBOutlet weak var selectedDate: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    // MARK: Instance variable
    var date = Date()
    let dateFormatter = DateFormatter()
    
    //MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.datePickerMode = .date
        dateFormatter.dateFormat = "dd-MM-YYYY"
        datePicker.preferredDatePickerStyle = .compact
        selectedDatee.text = dateFormatter.string(from: datePicker.date)
    }

    // MARK: IBAction
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        selectedDatee.text = dateFormatter.string(from: sender.date)
    }
    
}
