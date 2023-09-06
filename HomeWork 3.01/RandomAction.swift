//
//  RandomAction.swift
//  HomeWork 3.01
//
//  Created by Илья on 06.09.2023.
//

import Foundation

struct RandomAction {
    static func randomAnimation() -> String {
        let animatoins = DataStore.shared.animations
        let randomAnimation = Int.random(in: 0..<animatoins.count)
        
        return animatoins[randomAnimation]
    }

    static func randomCurve() -> String {
        let curves = DataStore.shared.curves
        let randomCurve = Int.random(in: 0..<curves.count)

        return curves[randomCurve]
    }
    
    static func randomNumber() -> CGFloat {
        return CGFloat.random(in: 0.2...2)
    }
}
