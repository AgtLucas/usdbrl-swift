//
//  ViewController.swift
//  USDBRL
//
//  Created by Lucas da Silva on 2/10/16.
//  Copyright © 2016 AgtLucas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputValue: UITextField!
    @IBOutlet weak var theResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func converter(sender: UIButton) {
        theResult.text = inputValue.text
    }

}

