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
    func createCurrentLayerWhenPan(_ newx: CGFloat, _ translation: CGFloat)
    func handleOpenCurrentLayer()
    func handleCloseCurrentLayer()
}

protocol NextLayerDelegate {
    func updateNext()
    func createNextLayerWhenPan(_ newx: CGFloat, _ translation: CGFloat)
    func handleOpenNextLayer()
    func handleCloseNextLayer()
}

protocol DetailsViewDelegate {
    func configureDetailsView()
}
