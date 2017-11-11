//
//  ViewController.swift
//  ThemeManager
//
//  Created by New User on 11/8/17.
//  Copyright © 2017 twof. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let navBar = ThemeManager.NavigationBar(navBar: (self.navigationController?.navigationBar)!)
        ThemeManager.ViewController(navBarTheme: navBar,
                                    label: label,
                                    button: button).apply(theme: .default)
        ContentManger.ViewController(label: label, button: button).apply(theme: .default)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

