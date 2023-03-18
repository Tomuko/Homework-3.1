//
//  AllAnimationInApp.swift
//  Homework 3.1
//
//  Created by Виктория Страдзина on 18.03.2023.
//

import UIKit
import SpringAnimation

struct AnimationSpringApp {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    var description: String {
        "preset: \(preset) \n curve: \(curve) \n force: \(convertToString(from: force)) \n duration: \(convertToString(from: duration)) \n delay: \(convertToString(from: delay))"
    }
    
    private func convertToString(from value: CGFloat) -> String {
        String(format: "%.1f", value)
    }
}


