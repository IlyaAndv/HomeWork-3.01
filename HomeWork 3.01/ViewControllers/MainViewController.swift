//
//  ViewController.swift
//  HomeWork 3.01
//
//  Created by Илья on 05.09.2023.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var runButton: UIButton!
    
    @IBOutlet var presentLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        let animation = RandomAction.randomAnimation()
        let curve = RandomAction.randomCurve()
        let force = RandomAction.randomNumber()
        let duration = RandomAction.randomNumber()
        
        springAnimationView.animation = animation
        springAnimationView.curve = curve
        springAnimationView.force = force
        springAnimationView.duration = duration
        springAnimationView.animate()
        
        presentLabel.text = "Present: \(animation)"
        curveLabel.text = "Curve: \(curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", Float(force)))"
        durationLabel.text = "Duration: \(String(format: "%.2f", Float(duration)))"
        delayLabel.text = "Delay: 1.00"
        
        runButton.setTitle("Show the following animation", for: .normal)
        
        sender.curve = "easeInExpo"
        sender.force = 1
        sender.duration = 1
        sender.animate()
    }
}
