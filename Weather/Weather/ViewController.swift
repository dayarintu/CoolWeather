//
//  ViewController.swift
//  Weather
//
//  Created by Daya on 9/17/17.
//  Copyright © 2017 Daya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: Constants.darksky)
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil {
                print("Error")
            }
        // Do any additional setup after loading the view, typically from a nib.
    }
}
}

