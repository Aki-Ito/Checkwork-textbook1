//
//  ViewController.swift
//  Checkwork-textbook1
//
//  Created by 伊藤明孝 on 2020/12/10.
//

import UIKit

class ViewController: UIViewController {
    
    
    var number:Float = 0.0
    var count: Float = 0.0
    var timer: Timer = Timer()
    
    
    @IBOutlet var label: UILabel!
    @IBOutlet var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc func up(){
        count=count+0.01
        timerLabel.text=String(format: "%.2f", count)
    }
    
    @IBAction func plus() {
        number = number + 1
        label.text = String(number)
        if !timer.isValid {
            timer=Timer.scheduledTimer (timeInterval: 0.01,
                                        target: self,
                                        selector: #selector(self.up),
                                        userInfo: nil,
                                        repeats: true
            )
            
        }
        if number == 3&&timer.isValid{
            timer.invalidate()
        }
        
    }
    
    @IBAction func result(){
            self.performSegue(withIdentifier: "toResult", sender: nil)
        }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.count = self.count
    }
        
}

