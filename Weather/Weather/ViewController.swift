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
            else {
                if let content = data {
                    do {
                        // Array
                        let myJson = try JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        if let currentData = myJson["currently"]as? NSDictionary {
                            
                            if let currentTemperature = currentData["temperature"] {
                                let roundedTemp = Int(round(currentTemperature as! Double))
                                print(roundedTemp)
                            }
                            if let humidity = currentData["humidity"] {
                                
                            print(humidity)
                                
                            }
                            
                            if let precipitation = currentData["precipIntensity"] {
                                print(precipitation)
                            }
                        }
                        
                    }
                    catch {
                        
                    }
                    
                }
            }
            
        }
        task.resume()
    }
}
