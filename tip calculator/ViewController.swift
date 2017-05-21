//
//  ViewController.swift
//  tip calculator
//
//  Created by keith.aqua on 21/05/2017.
//  Copyright © 2017 Keith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var bill: UITextField!
    @IBOutlet weak var tip: UITextField!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var numberOfPeople: UITextField!
    @IBOutlet weak var each: UILabel!
    @IBAction func calculate(_ sender: UIButton) {
        let sum:Double = round(Double(bill.text!)!*(1+Double(tip.text!)!)*100)/100
        let eachPays:Double = round(sum/Double(numberOfPeople.text!)!*100)/100
        total.text = "$"+String(sum)
        each.text = "$"+String(eachPays)
    }
}

