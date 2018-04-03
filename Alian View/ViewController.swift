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

    @IBOutlet var alienImgeView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 1st 이미지가 출력
        alienImgeView.image = UIImage(named: "frame1.png")
        
    }

    
    

    @IBAction func updateImage(_ sender: Any) {
        
        if counter == 5 {
            counter = 1
        } else {
            counter = counter + 1
            }
        alienImgeView.image = UIImage(named: "frame\(counter).png")
        }
    }

