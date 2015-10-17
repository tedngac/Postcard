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

    @IBAction func sendMailBtnPressed(sender: UIButton) {
        msgLbl.hidden = false
        msgLbl.text = enterMsgTxtFld.text
        msgLbl.textColor = UIColor.redColor()
        
        enterMsgTxtFld.text = ""
        enterMsgTxtFld.resignFirstResponder()
        
        mailBtn.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}