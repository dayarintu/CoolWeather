//
//  GCD.swift
//  Weather
//
//  Created by Daya on 9/17/17.
//  Copyright © 2017 Daya. All rights reserved.
//

import Foundation

// GCD to run the thread on Main

func performUIUpdatesOnMain (_ updates: @escaping () -> Void) {
    DispatchQueue.main.async {
        updates()
    }
}
