//
//  SecondViewController.swift
//  LearnUIViewController
//
//  Created by Sigit Hanafi on 19/04/19.
//  Copyright © 2019 Sigit Hanafi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Second View Controller"
        view.backgroundColor = .white
        
        print("View did load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View will appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("View will dissapear")
    }

}
