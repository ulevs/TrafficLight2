//
//  ViewController.swift
//  TrafficLight2
//
//  Created by Ульяна Евстигнеева on 23.05.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redSignal: UIView!
    @IBOutlet var yellowSignal: UIView!
    @IBOutlet var greenSignal: UIView!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSignal.layer.cornerRadius = redSignal.frame.size.width/2
        yellowSignal.layer.cornerRadius = redSignal.frame.size.width/2
        greenSignal.layer.cornerRadius = redSignal.frame.size.width/2
    }

    @IBAction func changeTrafficLight(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)
        counter += 1
        
        if counter == 1 {
            redSignal.alpha = 1
            yellowSignal.alpha = 0.5
            greenSignal.alpha = 0.5
        }
        if counter == 2 {
            redSignal.alpha = 0.5
            yellowSignal.alpha = 1
            greenSignal.alpha = 0.5
        }
        if counter == 3 {
            redSignal.alpha = 0.5
            yellowSignal.alpha = 0.5
            greenSignal.alpha = 1
            counter = 0
        }
    }
    
}

