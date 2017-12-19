//
//  ViewController.swift
//  Dicee
//
//  Created by Sean Kim on 12/18/17.
//  Copyright © 2017 Sean Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let fileNamePrefix : String = "dice"
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImage(diceImageView: diceImageView1)
        updateDiceImage(diceImageView: diceImageView2)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImage(diceImageView: diceImageView1)
        updateDiceImage(diceImageView: diceImageView2)
    }
    
    func updateDiceImage(diceImageView: UIImageView) {
        let randomDiceRoll = Int(arc4random_uniform(6)) + 1
        diceImageView.image = UIImage(named: fileNamePrefix + String(randomDiceRoll))
    }
}

