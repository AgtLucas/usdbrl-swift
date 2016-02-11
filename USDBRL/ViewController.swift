//
//  ViewController.swift
//  USDBRL
//
//  Created by Lucas da Silva on 2/10/16.
//  Copyright © 2016 AgtLucas. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    let apiURL = "http://free.currencyconverterapi.com/api/v3/convert?q=USD_BRL&compact=ultra"
    var apiResponse: AnyObject?

    @IBOutlet weak var inputValue: UITextField!
    @IBOutlet weak var theResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        apiCall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func apiCall() {
        Alamofire.request(.GET, apiURL).responseJSON { response in
            switch response.result {
            case .Success(let data):
                let json = JSON(data)
                let theValue = json["USD_BRL"].stringValue
                print(theValue)
            case .Failure(let error):
                print("Request failed with error: \(error)")
            }
        }
        
    }

    @IBAction func converter(sender: UIButton) {
        theResult.text = inputValue.text
    }

}

