//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOulet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    let diceImages = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Changes the left dice to dice six
        //diceImageView1.image = UIImage(named: "DiceSix")
        
        // Change the alpha property
        // Set it to 0.5
        //WHO            WHAT    VALUE
        //diceImageView1.alpha = 0.5
        
        // Change the right dice to dice two
        //diceImageView2.image = UIImage(named: "DiceTwo")
    }
    
    // IBAction triggers when action occurs on the provided UI element
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // Left and Right die images are randomized using Int.random
        diceImageView1.image = diceImages[Int.random(in: 0...5)]
        diceImageView2.image = diceImages[Int.random(in: 0...5)]
        
        // .randomElement will do the same as Int.random
        //diceImageView1.image = diceImages.randomElement()
        //diceImageView2.image = diceImages.randomElement()
    }
}

