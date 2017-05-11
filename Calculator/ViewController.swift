//
//  ViewController.swift
//  Calculator
//
//  Created by Russell Gordon on 4/30/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
// this is a connectionto lable the veiw
    @IBOutlet weak var LabelDisplay: UILabel!
    
    // create an instance (object) of Calculator class
    var model = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //clear contents of lable
        LabelDisplay.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnePressed(_ sender: Any) {
        model.addToNewValue(digit: "1")
    LabelDisplay.text = model.providedValue
    }

    @IBAction func TwoPressed(_ sender: Any) {
        model.addToNewValue(digit: "2")
        LabelDisplay.text = model.providedValue
    }
    
    @IBAction func ThreePressed(_ sender: Any) {
        model.addToNewValue(digit: "3")
        LabelDisplay.text = model.providedValue
    }
    
    @IBAction func FourPressed(_ sender: Any) {
        model.addToNewValue(digit: "4")
        LabelDisplay.text = model.providedValue
    }
    
    @IBAction func FivePressed(_ sender: Any) {
        model.addToNewValue(digit: "5")
        LabelDisplay.text = model.providedValue
    }
    
    @IBAction func SixPressed(_ sender: Any) {
        model.addToNewValue(digit: "6")
        LabelDisplay.text = model.providedValue
    }
    
    @IBAction func SevenPressed(_ sender: Any){
        model.addToNewValue(digit: "7")
        LabelDisplay.text = model.providedValue
    }
    
    @IBAction func EightPressed(_ sender: Any) {
        model.addToNewValue(digit: "8")
        LabelDisplay.text = model.providedValue
    }
    
    @IBAction func NinePressed(_ sender: Any) {
        model.addToNewValue(digit: "9")
        LabelDisplay.text = model.providedValue
    }
    
    @IBAction func ZeroPressed(_ sender: Any) {
        model.addToNewValue(digit: "0")
        LabelDisplay.text = model.providedValue
    }
    
    @IBAction func Multiply(_ sender: Any) {
        model.multiply()
    }
    
    @IBAction func equals(_ sender: Any) {
        model.equals()
        if model.computedValue != nil{
        LabelDisplay.text = String(format: "%g", model.computedValue!)
        }
    }
    
    @IBAction func Divide(_ sender: Any) {
        model.divide()
    }
    
    @IBAction func Clear(_ sender: Any) {
        model.clear()
        LabelDisplay.text = String("")
    }

    @IBAction func Add(_ sender: Any) {
        model.add()
    }
    
    @IBAction func Sub(_ sender: Any) {
        model.sub()
    }
    
    @IBAction func percentage(_ sender: Any) {
        model.percentage()
        equals("")
    }
    
    @IBAction func plusMinus(_ sender: Any) {
        model.plusMinus ()
        equals("")
    }
    @IBAction func decimalPressed(_ sender: Any) {
        model.addToNewValue(digit: ".")
        LabelDisplay.text = model.providedValue
    }
}

