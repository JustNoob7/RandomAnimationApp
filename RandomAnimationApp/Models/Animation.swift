//
//  Animation.swift
//  RandomAnimationApp
//
//  Created by Ярослав Бойко on 18.10.2021.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        name: \(name)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animations.randomElement() ?? "slideLeft",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeInOut",
            force: Float.random(in: 1...2),
            duration: Float.random(in: 0.7...1.7),
            delay: 0.3)
    }
    
}
