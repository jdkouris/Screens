//
//  NumberedViewController.swift
//  Screens
//
//  Created by John Kouris on 8/6/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit

class NumberedViewController: UIViewController {
    
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 160, height: 80))

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(label)
        label.textColor = .white
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 64)
        label.center = view.center
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let count = navigationController?.viewControllers.count {
            label.text = String(count)
            label.sizeToFit()
        }
    }
    
}
