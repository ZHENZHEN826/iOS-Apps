//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Tony on 2019-03-13.
//  Copyright © 2019 Tony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballView: UIImageView!
    var randomInt : Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        makeRandomImage()
    }
    @IBAction func askButton(_ sender: Any) {
        makeRandomImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        makeRandomImage()
    }
    
    func makeRandomImage(){
        randomInt = Int.random(in: 1...5)
        ballView.image = UIImage(named: "ball\(randomInt)")
    }

}

