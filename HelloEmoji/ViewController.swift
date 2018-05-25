//
//  ViewController.swift
//  HelloEmoji
//
//  Created by Gaskins, Hannah on 4/20/18.
//  Copyright © 2018 Gaskins, Hannah. All rights reserved.
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

    @IBAction func showMessage(sender: UIButton) {
        // initialize a dictionary of emoji string key values
        var emojiDict = ["🍩" : "doughnut", "🍾": "champaigne", "🍺": "beer", "🍭": "lolliPOP"]
        // the sender is the button tapped by the user
        // here we store the sender in the selectedButton constant
        let selectedButton = sender
        // get the emoji from the title label fo the selected button
        if let wordToLookup = selectedButton.titleLabel?.text {
            // get the meaning of th emoji from the dictionary
            let meaning = emojiDict[wordToLookup]
            // change the alert controller to display the meaning of the emoji
            let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: .alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            present(alertController, animated: true, completion: nil)
        }
    }
    

}

