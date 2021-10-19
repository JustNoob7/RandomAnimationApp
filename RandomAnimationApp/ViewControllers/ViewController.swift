//
//  ViewController.swift
//  RandomAnimationApp
//
//  Created by Ярослав Бойко on 18.10.2021.
//

import Spring

class MainViewController: UIViewController {

    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var animationView: SpringView!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
    }

    @IBAction func runAnimationButton(_ sender: SpringButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}

