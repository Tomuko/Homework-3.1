//
//  ViewController.swift
//  Homework 3.1
//
//  Created by Виктория Страдзина on 18.03.2023.
//

import UIKit
import SpringAnimation

final class SpringAnimationsMainViewController: UIViewController {
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var springAnimationDescriptionLabel: UILabel!
    
    @IBOutlet weak var springAnimationButton: UIButton!
    
    private let animations = DataManagerSpringApp.shared.dataStore
    private lazy var index = Int.random(in: 0..<animations.count)
    
    override func viewDidLoad() {
            super.viewDidLoad()
            updateView()
        }
    
    @IBAction func animateViewPressed() {
        if animations.isEmpty { return }
        
        springAnimationView.animation = animations[index].preset
        springAnimationView.curve = animations[index].curve
        springAnimationView.force = animations[index].force
        springAnimationView.duration = animations[index].duration
        springAnimationView.delay = animations[index].delay
        springAnimationView.animate()
        
        updateView()
        
        index = Int.random(in: 0..<animations.count)
        springAnimationButton.setTitle("Run \(animations[index].preset)", for: .normal)
    }
    
    private func updateView() {
        guard animations.indices.contains(index) else { return }
        springAnimationDescriptionLabel.text = animations[index].description
    }
}

