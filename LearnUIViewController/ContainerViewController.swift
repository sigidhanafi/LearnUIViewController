//
//  ContainerViewController.swift
//  LearnUIViewController
//
//  Created by Sigit Hanafi on 19/04/19.
//  Copyright © 2019 Sigit Hanafi. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

    private var firstChildViewController: FirstChildViewController?
    private let greetingText = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Container View Controller"
        navigationController?.navigationBar.isTranslucent = false
        
        greetingText.attributedText = NSAttributedString(string: "Welcome to container view controller", attributes: [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12),
            NSAttributedString.Key.foregroundColor: UIColor.black.withAlphaComponent(0.7),
            ])
        greetingText.frame = CGRect(x: 16, y: 16, width: self.view.frame.width - 32, height: 32)
        greetingText.textAlignment = .center
        
        view.addSubview(greetingText)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: {
            self.firstChildViewController = FirstChildViewController()
            guard let firstChildVC = self.firstChildViewController else {
                return
            }
            self.addChild(firstChildVC)
            firstChildVC.didMove(toParent: self)
            firstChildVC.view.frame = self.view.bounds
            self.view.addSubview(firstChildVC.view)
        })

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: {
            self.firstChildViewController?.view.removeFromSuperview()
            self.firstChildViewController?.removeFromParent()
            self.firstChildViewController = nil
        })
    }

}
