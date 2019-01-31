//
//  ClassB.swift
//  DemoNotificationObserver
//
//  Created by Gaurang Lathiya on 31/01/19.
//  Copyright © 2019 Gaurang Lathiya. All rights reserved.
//

import UIKit

class ClassB: UIViewController {

    @IBOutlet weak var lblTxt: UILabel!
    
    public var strTxt: String = "N/A"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "Class B"
        
        self.lblTxt.text = self.strTxt
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.title = nil
    }
    
    // MARK: - Navigation
    @IBAction func gotoC(_ sender: UIButton) {
        if let objClassC: ClassC = self.storyboard?.instantiateViewController(withIdentifier: String(describing: ClassC.self)) as? ClassC {
            objClassC.strTxt = "Coming from B"
            self.navigationController?.pushViewController(objClassC, animated: true)
        }
    }
    
}
