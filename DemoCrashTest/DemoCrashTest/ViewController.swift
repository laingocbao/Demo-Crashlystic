//
//  ViewController.swift
//  DemoCrashTest
//
//  Created by Macintosh HD on 4/22/20.
//  Copyright © 2020 Macintosh HD. All rights reserved.
//

import UIKit
import FirebaseAnalytics
import FirebaseCrashlytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton(type: .roundedRect)
        button.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
        button.setTitle("Crash", for: [])
        button.addTarget(self, action: #selector(self.crashButtonTapped(_:)), for: .touchUpInside)
        view.addSubview(button)
        
        print(Crashlytics.crashlytics().didCrashDuringPreviousExecution())
    }
    
    @IBAction func crashButtonTapped(_ sender: AnyObject) {
        Analytics.logEvent("Crash", parameters: nil)
        fatalError()
    }


}

