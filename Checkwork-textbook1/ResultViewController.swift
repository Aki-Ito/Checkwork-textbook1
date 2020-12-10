//
//  ResultViewController.swift
//  Checkwork-textbook1
//
//  Created by 伊藤明孝 on 2020/12/10.
//

import UIKit

class ResultViewController: UIViewController {
    
    var count:Float = 0.0
    @IBOutlet var label : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = "あなたの結果は\(count)秒です"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
