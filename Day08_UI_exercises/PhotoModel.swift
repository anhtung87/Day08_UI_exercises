//
//  PhotoModel.swift
//  Day08_UI_exercises
//
//  Created by Hoang Tung on 10/29/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation
import UIKit

class Photo {
    var name: String
    var image: UIImage
    var color: UIColor
    
    init(name: String, image: UIImage, color: UIColor) {
        self.name = name
        self.image = image
        self.color = color
    }
}

class Photos {
    var list: [Photo]
    var lastPick: Photo
    
    init() {
        let ares = Photo(name: "Ares", image: UIImage(named: "ares")!, color: UIColor.systemRed)
        let taurus = Photo(name: "Taurus", image: UIImage(named: "taurus")!, color: UIColor.systemBlue)
        let libra = Photo(name: "Libra", image: UIImage(named: "libra")!, color: UIColor.systemGreen)
        let sagittarius = Photo(name: "Sagittarius", image: UIImage(named: "sagittarius")!, color: UIColor.systemIndigo)
        let leo = Photo(name: "Leo", image: UIImage(named: "leo")!, color: UIColor.systemYellow)
        let cancer = Photo(name: "Cancer", image: UIImage(named: "cancer")!, color: UIColor.systemPurple)
        let gemini = Photo(name: "Gemini", image: UIImage(named: "gemini")!, color: UIColor.systemPink)
        let pisces = Photo(name: "Pisces", image: UIImage(named: "pisces")!, color: UIColor.systemTeal)
        let scorpio = Photo(name: "Scorpio", image: UIImage(named: "scorpio")!, color: UIColor.systemOrange)
        let virgo = Photo(name: "Virgo", image: UIImage(named: "virgo")!, color: UIColor.purple)
        let aquarius = Photo(name: "Aquarius", image: UIImage(named: "aquarius")!, color: UIColor.red)
        let capricorn = Photo(name: "Capricorn", image: UIImage(named: "capricorn")!, color: UIColor.blue)
        self.list = [ares, taurus, libra, sagittarius, leo, cancer, gemini, pisces, scorpio, virgo, aquarius, capricorn]
        self.lastPick = self.list.randomElement()!
    }
    
    func randomPick() -> Photo {
        self.lastPick = self.list.filter({$0.name != self.lastPick.name}).randomElement()!
        return self.lastPick
    }
}
