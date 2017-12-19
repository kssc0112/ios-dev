//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Sean Kim on 12/18/17.
//  Copyright © 2017 Sean Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBallImageView: UIImageView!
    let ballImages = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateBallImage() {
        let randomIndex = Int(arc4random_uniform(4))
        magicBallImageView.image = UIImage(named: ballImages[randomIndex])
    }
    
    @IBAction func onAskButtonPressed(_ sender: UIButton) {
        updateBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
}

