//
//  ClassA.swift
//  DemoNotificationObserver
//
//  Created by Gaurang Lathiya on 31/01/19.
//  Copyright © 2019 Gaurang Lathiya. All rights reserved.
//

import UIKit

class ClassA: UIViewController {

    @IBOutlet weak var lblTxt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Define identifier
        let notificationName = Notification.Name("newData")
        
        // Register to receive notification
        NotificationCenter.default.addObserver(self, selector: #selector(self.handleNotification(notification:)), name: notificationName, object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "Class A"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.title = nil
    }
    
    deinit {
        let notificationName = Notification.Name("newData")
        NotificationCenter.default.removeObserver(self, name: notificationName, object: nil)
    }
    
    // MARK: - Handle notification here
    @objc func handleNotification(notification: NSNotification) {
        print("notification data: \(String(describing: notification.userInfo))")
    }

    // MARK: - Navigation
    @IBAction func gotoB(_ sender: UIButton) {
        if let objClassB: ClassB = self.storyboard?.instantiateViewController(withIdentifier: String(describing: ClassB.self)) as? ClassB {
            objClassB.strTxt = "Coming from A"
            self.navigationController?.pushViewController(objClassB, animated: true)
        }
        
    }
}
