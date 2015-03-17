//
//  ViewController.swift
//  Postcard
//
//  Created by Kenneth Britz on 12/26/14.
//  Copyright (c) 2014 Kenneth Britz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Adding a comment here to test commit
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

