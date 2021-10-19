//
//  DataManager.swift
//  RandomAnimationApp
//
//  Created by Ярослав Бойко on 18.10.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations = [
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "fadeIn",
        "fadeOut",
        "fadeOutIn",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "fall",
        "shake",
        "pop",
        "flipX",
        "flipY",
        "morph",
        "squeeze",
        "flash",
        "wobble",
        "swing"
    ]
    
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
