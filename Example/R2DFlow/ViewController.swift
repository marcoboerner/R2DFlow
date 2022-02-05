//
//  ViewController.swift
//  R2DFlow
//
//  Created by marcoboerner on 02/05/2022.
//  Copyright (c) 2022 marcoboerner. All rights reserved.
//

import UIKit
import R2DFlow

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let emptyFramework = R2DFlow()
        emptyFramework.doNothing()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

