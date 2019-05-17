//
//  CreateGoalVC.swift
//  AppGoalPost
//
//  Created by Stephenson Ang on 16/05/2019.
//  Copyright © 2019 Stephenson Ang. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {

    @IBOutlet weak var goalTxtView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nextBtn.bindToKeyboard()
        shortTermBtn.setSeletedColor()
        longTermBtn.setDeselectColor()
        goalTxtView.delegate = self
    }

    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSeletedColor()
        longTermBtn.setDeselectColor()
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = .longTerm
        longTermBtn.setSeletedColor()
        shortTermBtn.setDeselectColor()
    }
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        if goalTxtView.text != "" && goalTxtView.text != "What is your goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else { return }
            finishGoalVC.initData(description: goalTxtView.text!, type: goalType)
            presentDetail(finishGoalVC)
        }
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTxtView.text = ""
        goalTxtView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
