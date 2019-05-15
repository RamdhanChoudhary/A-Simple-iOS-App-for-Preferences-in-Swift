//
//  ViewController.swift
//  Simple Preferences
//
//  Created by RAMDHAN CHOUDHARY on 15/05/19.
//  Copyright © 2019 RDC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func savePreferenceData(_ sender: Any) {
        print("Storing data..")
        UserDefaults.standard.set("RDC", forKey: "UserName") //String
        UserDefaults.standard.set("TestPass", forKey: "Passowrd")  //String
        UserDefaults.standard.set(21, forKey: "Age")  //Integer

    }
    
    @IBAction func fetchPreferenceData(_ sender: Any) {
        print("Fetching data..")
        guard let uName = UserDefaults.standard.string(forKey: "UserName") else { return }
        print("User Name is :"+uName)
        print(UserDefaults.standard.integer(forKey: "Age"))
    }
    
}

