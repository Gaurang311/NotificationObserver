//
//  ClassC.swift
//  DemoNotificationObserver
//
//  Created by Gaurang Lathiya on 31/01/19.
//  Copyright © 2019 Gaurang Lathiya. All rights reserved.
//

import UIKit

class ClassC: UIViewController {

    @IBOutlet weak var lblTxt: UILabel!
    
    public var strTxt: String = "N/A"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "Class C"
        
        self.lblTxt.text = self.strTxt
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.title = nil
    }
    
    // MARK: - Navigation
    @IBAction func gobacktoA(_ sender: UIButton) {
        
        let userInfo:[String: String] = ["firstKey": "Data is coming from class C",
                                            "secondKey": "Dummy"]
        let nc = NotificationCenter.default
        nc.post(name: Notification.Name("newData"), object: nil, userInfo: userInfo)
        
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
}
