//
//  CreateGoalVC.swift
//  AppGoalPost
//
//  Created by Stephenson Ang on 16/05/2019.
//  Copyright © 2019 Stephenson Ang. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var goalTxtView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
}
