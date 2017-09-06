//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Clinton Liddiard on 9/2/17.
//  Copyright © 2017 LLApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showUser()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var ballView: UIImageView!
    
    @IBAction func askTheBall(_ sender: UIButton) {
        showUser()
    }
    
    func randomize() ->Int{
        let ballSays = Int(arc4random_uniform(5))
        print(ballSays)
        return ballSays
    }
    func showUser(){
        let result = randomize()
        ballView.image = UIImage(named: ballArray[result])
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        showUser()
    }
    
}

