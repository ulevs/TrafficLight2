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
    
    @IBOutlet var startButton: UIButton!
    
    private var counter = 0
    
    private let signalOn = 1.0
    private let signalOff = 0.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 12
        
        redSignal.alpha = signalOff
        yellowSignal.alpha = signalOff
        greenSignal.alpha = signalOff
    }
    override func viewWillLayoutSubviews() {
        redSignal.layer.cornerRadius = redSignal.frame.size.width / 2
        yellowSignal.layer.cornerRadius = redSignal.frame.size.width / 2
        greenSignal.layer.cornerRadius = redSignal.frame.size.width / 2
        
    }

    @IBAction func changeTrafficLight() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        counter += 1
        
        if counter == 1 {
            redSignal.alpha = signalOn
            yellowSignal.alpha = signalOff
            greenSignal.alpha = signalOff
        }
        if counter == 2 {
            redSignal.alpha = signalOff
            yellowSignal.alpha = signalOn
            greenSignal.alpha = signalOff
        }
        if counter == 3 {
            redSignal.alpha = signalOff
            yellowSignal.alpha = signalOff
            greenSignal.alpha = signalOn
            counter = 0
        }
    }
    
}

