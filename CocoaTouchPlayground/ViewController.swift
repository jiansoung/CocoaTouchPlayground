//
//  ViewController.swift
//  CocoaTouchPlayground
//
//  Created by songjian on 2018/12/5.
//  Copyright © 2018 Jian Soung's Studio. All rights reserved.
//

import UIKit
import Eureka

class ViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        form +++ Section()
            <<< TextRow() { row in
                row.tag = "name"
                row.title = "Name"
                row.placeholder = "Enter your name"
            }
            <<< DateRow(){
                $0.tag = "birthday"
                $0.title = "Birthday"
                $0.value = Date()
            }
        +++ Section()
            <<< ButtonRow(){
                $0.title = "Save"
                $0.onCellSelection(self.buttonTapped(cell:row:))
        }
    }

    func buttonTapped(cell: ButtonCellOf<String>, row: ButtonRow) {
        print("button tapped")
        let nameRow: TextRow = form.rowBy(tag: "name") as! TextRow
        let name = nameRow.value ?? ""
        let dateRow: DateRow = form.rowBy(tag: "birthday") as! DateRow
        let date = dateRow.value ?? Date()
        print("name: \(name)")
        print("date: \(date)")
    }

}

