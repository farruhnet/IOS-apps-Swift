//
//  ViewController.swift
//  MagicBall
//
//  Created by MFI on 27.06.2018.
//  Copyright © 2018 Makhmudov Farrukh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ballImageOutlet: UIImageView!
    
    var randomBallValue: Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        updateAnswer()
    }
    
    func updateAnswer() -> Void {
        randomBallValue = Int(arc4random_uniform(5))
        
        ballImageOutlet.image = UIImage(named: ballArray[randomBallValue])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateAnswer()
    }
    

}

