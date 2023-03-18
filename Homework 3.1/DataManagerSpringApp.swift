//
//  SpringAnimationInformations.swift
//  Homework 3.1
//
//  Created by Виктория Страдзина on 18.03.2023.
//

import Foundation
import SpringAnimation

final class DataManagerSpringApp {
    
    static let shared = DataManagerSpringApp()
    let dataStore: [AnimationSpringApp] = {
        var animations = [AnimationSpringApp]()
        for animation in AnimationPreset.allCases {
            animations.append(
                AnimationSpringApp(
                    preset: animation.rawValue,
                    curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "",
                    force: CGFloat.random(in: 0.5...2),
                    duration: CGFloat.random(in: 0.5...2),
                    delay: 0.3
                )
            )
        }
        return animations
    }()
}
