//
//  FirstChildViewController.swift
//  LearnUIViewController
//
//  Created by Sigit Hanafi on 19/04/19.
//  Copyright © 2019 Sigit Hanafi. All rights reserved.
//

import UIKit

class FirstChildViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        
        print("First Child View Controller did load")
    }
    
    override func didMove(toParent parent: UIViewController?) {
        print("First Child View Controller did move")
    }
    
    override func removeFromParent() {
        print("First Child View Controller remove form parent")
    }

}
