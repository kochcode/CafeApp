//
//  ViewController.swift
//  CafeApp
//
//  Created by KEVIN KOCH on 9/13/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var listOutput: UITextView!
    @IBOutlet weak var cartOutput: UITextView!
    @IBOutlet weak var totalOutput: UITextView!
    @IBOutlet weak var itemInput: UITextField!
    @IBOutlet weak var itemInputDos: UITextField!
    @IBOutlet weak var priceInput: UITextField!
    @IBOutlet weak var passWord: UITextField!
    
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
            totalOutput.text = "Total: \n $\(round(1000*total)/1000)"
        }
        else{
            itemInput.text = "Not an item!"
        }
    }
    @IBAction func addButton(_ sender: UIButton) {
        if passWord.text == "giveadmin"{
            items[itemInputDos.text!] = Double(priceInput.text!)!
            listOutput.text = "\(listOutput.text!)\n \(itemInputDos.text!)- $\(priceInput.text!)"
        }
    }
    @IBAction func removeButton(_ sender: UIButton) {
        if passWord.text == "giveadmin"{
            items.removeValue(forKey: itemInputDos.text!)
            
        }
    }
    func clearMenu(){
    }
    
    
}

