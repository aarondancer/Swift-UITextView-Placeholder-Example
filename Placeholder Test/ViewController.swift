//
//  ViewController.swift
//  Placeholder Test
//
//  Created by Aaron Dancer on 10/8/14.
//  Copyright (c) 2014 Aaron Dancer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (textView.text == "") textViewDidEndEditing(textView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textViewDidEndEditing(textView: UITextView) {
        if (textView.text == "") {
            textView.text = "Placeholder"
            textView.textColor = UIColor.lightGrayColor()
        }
        textView.resignFirstResponder()
    }
    
    func textViewDidBeginEditing(textView: UITextView){
        if (textView.text == "Placeholder"){
            textView.text = ""
            textView.textColor = UIColor.blackColor()
        }
        textView.becomeFirstResponder()
    }

}

