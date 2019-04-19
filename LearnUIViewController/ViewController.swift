//
//  ViewController.swift
//  LearnUIViewController
//
//  Created by Sigit Hanafi on 19/04/19.
//  Copyright © 2019 Sigit Hanafi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Learn View Controller"
        self.view.backgroundColor = .white
        self.navigationController?.navigationBar.isTranslucent = false
        
        let buttonTitle = NSAttributedString(string: "Open Next Screen", attributes: [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12),
            NSAttributedString.Key.foregroundColor: UIColor.white
            ])
        nextButton.setAttributedTitle(buttonTitle, for: .normal)
        nextButton.backgroundColor = UIColor.blue.withAlphaComponent(0.3)
        nextButton.frame = CGRect(x: 16, y: 16, width: self.view.frame.width - 32, height: 40)
        nextButton.layer.cornerRadius = 4
        nextButton.addTarget(self, action: #selector(nextButtonPressed), for: .touchUpInside)
        
        self.view.addSubview(nextButton)
        
        print("View did load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View will appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("View will dissapear")
    }
    
    @objc private func nextButtonPressed() {
        let secondViewController = SecondViewController()
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }

}

