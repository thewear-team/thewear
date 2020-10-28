//
//  Protocols.swift
//  theWearApp
//
//  Created by Max Reshetov on 13/07/2019.
//  Copyright © 2019 Max Reshetov. All rights reserved.
//

import UIKit

protocol PreviousLayerDelegate {
    func updatePrevious()
}

protocol CurrentLayerDelegate {
    func updateCurrent()
    func createCurrentLayerWhenPan(_ newX: CGFloat, _ newY: CGFloat, _ translation: CGFloat)
    func handleOpenCurrentLayer()
    func handleCloseCurrentLayer()
}

protocol NextLayerDelegate {
    func updateNext()
    func createNextLayerWhenPan(_ newX: CGFloat, _ newY: CGFloat, _ translationX: CGFloat, _ translationY: CGFloat)
    func handleOpenNextLayer()
    func handleCloseNextLayer()
}

protocol ChangeCityDelegate {
    func changeCity(_ currentCity: String)
}

protocol ActivateCityButtonDelegate {
    func activateCityAndSettingsButton()
}

protocol CityDelegate {
    func stopAnimation()
}

