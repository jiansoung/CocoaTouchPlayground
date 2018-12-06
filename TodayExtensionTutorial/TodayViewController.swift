//
//  TodayViewController.swift
//  TodayExtensionTutorial
//
//  Created by songjian on 2018/12/6.
//  Copyright © 2018 Jian Soung's Studio. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var versionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let os = ProcessInfo().operatingSystemVersion
        let version = "\(os.majorVersion).\(os.minorVersion).\(os.patchVersion)"
        versionLabel.text = version
    }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
