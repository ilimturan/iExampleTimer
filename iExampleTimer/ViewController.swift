//
//  ViewController.swift
//  iExampleTimer
//
//  Created by ilim turan on 17/09/14.
//  Copyright (c) 2014 ilimturan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    @IBOutlet var labelTime: UILabel!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnPlay(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("plusTimer"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func btnPause(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func btnReset(sender: AnyObject) {
        timer.invalidate()
        counter = 0
        labelTime.text = String(0)
    }
    
    
    func plusTimer(){
        counter++
        labelTime.text = String(counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

