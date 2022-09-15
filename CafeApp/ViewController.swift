//
//  ViewController.swift
//  CafeApp
//
//  Created by KEVIN KOCH on 9/13/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var cartOutput: UILabel!
    @IBOutlet weak var totalOutput: UILabel!
    @IBOutlet weak var itemInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var total : Double = 0
    var items = ["Coffee" : 6.49, "Bagel" : 3.99, "Muffin" : 2.99, "Cocoa" : 6.99, "Sandwich" : 8.49, "Tea" : 4.99]
    @IBAction func addCart(_ sender: UIButton) {
        if let text = itemInput.text, let result = items[text] {
            cartOutput.text =
            "\(cartOutput.text!)\n\(itemInput.text!) \(result)"
            total = total + result
            totalOutput.text = "Total: \n $\(total)"
        else itemInput.text = "Not an option!"
        }
    }
    
}

