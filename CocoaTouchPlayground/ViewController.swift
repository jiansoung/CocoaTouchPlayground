//
//  ViewController.swift
//  CocoaTouchPlayground
//
//  Created by songjian on 2018/12/5.
//  Copyright © 2018 Jian Soung's Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!

    private var datePicker: UIDatePicker?

    override func viewDidLoad() {
        super.viewDidLoad()

        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        inputTextField.inputView = datePicker
    }


}

