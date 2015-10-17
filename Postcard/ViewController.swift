//
//  ViewController.swift
//  Postcard
//
//  Created by Ngac Duy Anh on 10/12/15.
//  Copyright © 2015 Ngac Duy Anh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var enterNameTxtFld: UITextField!
    @IBOutlet weak var enterMsgTxtFld: UITextField!
    @IBOutlet weak var mailBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // Run this code when the "send Mail" button is pressed
    @IBAction func sendMailBtnPressed(sender: UIButton) {
        // unhiding the label
        nameLbl.hidden = false
        msgLbl.hidden = false
        
        // setting the text to the label based on what user had key in
        nameLbl.text = "Dear \(enterNameTxtFld.text!),"
        msgLbl.text = enterMsgTxtFld.text
        
        // setting the colours of the label
        nameLbl.textColor = UIColor.blueColor()
        msgLbl.textColor = UIColor.redColor()
        
        // clearing the text fields
        enterNameTxtFld.text = ""
        enterMsgTxtFld.text = ""
        
        // hide the keyboard
        enterNameTxtFld.resignFirstResponder()
        enterMsgTxtFld.resignFirstResponder()
        
        mailBtn.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}