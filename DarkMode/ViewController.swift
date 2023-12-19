//
//  ViewController.swift
//  DarkMode
//
//  Created by Fatih Oğuz on 19.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
       // overrideUserInterfaceStyle = .light
    }

    
    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStayle = traitCollection.userInterfaceStyle
        
        if userInterfaceStayle == .dark {
            nextButton.tintColor = UIColor.white
        }else {
            nextButton.tintColor = UIColor.blue
        }
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStayle = traitCollection.userInterfaceStyle
        
        if userInterfaceStayle == .dark {
            nextButton.tintColor = UIColor.white
        }else {
            nextButton.tintColor = UIColor.blue
        }
    }
}

