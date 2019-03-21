//
//  ViewController.swift
//  Dicee
//
//  Created by Tony on 2019-03-12.
//  Copyright © 2019 Tony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    
    var randomIndex1 : Int = 0
    var randomIndex2 : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomDiceImage()
    }
    @IBAction func rollButtonTap(_ sender: Any) {
        randomDiceImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomDiceImage()
    }
    
    func randomDiceImage() {
        randomIndex1 = Int.random(in: 1 ... 6)
        randomIndex2 = Int.random(in: 1 ... 6)
        
        imageView1.image = UIImage(named: "dice\(randomIndex1)")
        imageView2.image = UIImage(named: "dice\(randomIndex2)")
    }

}

