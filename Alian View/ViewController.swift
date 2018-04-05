//
//  ViewController.swift
//  Alian View
//
//  Created by D7703_14 on 2018. 4. 3..
//  Copyright © 2018년 Personal Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    var mom = true
    var myTimer = Timer()

    @IBOutlet var alienImgeView: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 1st 이미지가 출력
        alienImgeView.image = UIImage(named: "frame1.png")
        lbl.text = "1"
        
    }

    @IBAction func play(_ sender: Any) {
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updateImage), userInfo: nil, repeats: true)
    }
    
    @IBAction func stop(_ sender: Any) {
        myTimer.invalidate()
    }
    

    @IBAction func updateImage(_ sender: Any) {
        
        if counter == 1 {
            mom = true
            
        } else if counter == 5{
            mom = false
            
            
            }
        if mom == true {
            counter = counter + 1
        } else if mom == false {
            counter = counter - 1
        }
        
        alienImgeView.image = UIImage(named: "frame\(counter).png")
        lbl.text = String(counter)
        }
    }

