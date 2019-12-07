//
//  BViewController.swift
//  NSNotificationCenter
//
//  Created by Eray Alparslan on 7.12.2019.
//  Copyright © 2019 Eray Alparslan. All rights reserved.
//

import UIKit

class BViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(checkInternetConnection(_:)),
                                               name: NSNotification.Name(rawValue: "notificationInternet"), object: nil)
    }
    deinit { NotificationCenter.default.removeObserver(self) }
    
    @objc func checkInternetConnection(_ notification : Notification) {
        if let car = notification.object as? Car{
            print(car.brand)
            print(car.model)
        }
    }
}
