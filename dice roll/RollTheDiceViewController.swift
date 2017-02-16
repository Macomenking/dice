//
//  RollTheDiceViewController.swift
//  dice roll
//
//  Created by King Man on 2/11/17.
//  Copyright © 2017 King Man. All rights reserved.
//

import UIKit

class RollTheDiceViewController: UIViewController {
    
    
    @IBOutlet weak var SmallDice: UIImageView!
    @IBOutlet weak var BigDice: UIImageView!
    @IBOutlet weak var Switch: UISwitch!
   
    
    @IBAction func RollButton(_ sender: UIButton) {
        
        if Switch.isOn {
            
        rollBigDice()
            
        }else {
        
        rollSmallDice()
        }
    }
    
    
    @IBAction func switchAction(_ sender: Any) {
        if Switch.isOn {
            SmallDice.image = nil
            BigDice.image = UIImage(named: "Dice4.png")
        }else {
            BigDice.image = nil
            SmallDice.image = UIImage(named: "Dice1.png")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Switch.isOn {
            SmallDice.image = nil
            BigDice.image = UIImage(named: "Dice4.png")
        }else {
            BigDice.image = nil
            SmallDice.image = UIImage(named: "Dice1.png")
        }
        // Do any additional setup after loading the view.
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func rollSmallDice() {
        
        let randomNumber = Int(arc4random_uniform(3)) + 1
        switch randomNumber {
        case 1:
            SmallDice.image = UIImage(named: "Dice1.png")
        case 2:
            SmallDice.image = UIImage(named: "Dice2.png")
        case 3:
            SmallDice.image = UIImage(named: "Dice3.png")
        default:
            SmallDice.image = nil
            
    }
}

    func rollBigDice() {
        
        let randomNumber = Int(arc4random_uniform(3)) + 1
        switch randomNumber {
        case 1:
            BigDice.image = UIImage(named: "Dice4.png")
        case 2:
            BigDice.image = UIImage(named: "Dice5.png")
        case 3:
            BigDice.image = UIImage(named: "Dice6.png")
        default:
            BigDice.image = nil
    }
}
    
    
    
    
}
