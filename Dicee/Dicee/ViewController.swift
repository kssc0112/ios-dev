//
//  ViewController.swift
//  Dicee
//
//  Created by Sean Kim on 12/18/17.
//  Copyright © 2017 Sean Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceRoll1 : Int = 0
    var randomDiceRoll2 : Int = 0
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomDiceRoll1 = Int(arc4random_uniform(6)) + 1
        randomDiceRoll2 = Int(arc4random_uniform(6)) + 1
        
        let fileNamePrefix : String = "dice"
        diceImageView1.image = UIImage(named: fileNamePrefix + String(randomDiceRoll1))
        diceImageView2.image = UIImage(named: fileNamePrefix + String(randomDiceRoll2))
    }
    
}

