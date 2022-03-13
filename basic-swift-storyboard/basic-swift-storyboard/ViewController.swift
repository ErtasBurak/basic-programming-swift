//
//  ViewController.swift
//  basic-swift-storyboard
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterNumber: UITextField!
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer=Timer()
    
    var number=0
    var remainingTime=0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        timeLabel.text="Remaining Time : \(remainingTime)"
        
        
    }

    @IBAction func startButton(_ sender: Any) {
        timer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
        number = Int(enterNumber.text!)!
        
        remainingTime=number
    }
    
    @objc func timerFunction(){
        
        
        if remainingTime == 0 {
            timeLabel.text="Time is up"
            timer.invalidate()
            remainingTime=number
            return
        }
        
        remainingTime-=1
        
        timeLabel.text="Remaining Time :\(remainingTime)"
        
        
    }
    
}

