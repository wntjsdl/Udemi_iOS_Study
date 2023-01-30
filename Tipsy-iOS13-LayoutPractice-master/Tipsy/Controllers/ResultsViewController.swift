//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by powerapp on 2023/01/30.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingLabel: UILabel!

    

    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
