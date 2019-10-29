//
//  ViewController.swift
//  Day08_UI_exercises
//
//  Created by Hoang Tung on 10/29/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var photoNameLabel: UILabel!
    
    @IBOutlet weak var photoButton: UIButton!
    
    var photos = Photos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoButton.layer.cornerRadius = 16
        photoImageView.image = photos.lastPick.image
        photoNameLabel.text = photos.lastPick.name
        photoButton.backgroundColor = photos.lastPick.color
    }

    @IBAction func onPress(_ sender: Any) {
        let photo = photos.randomPick()
        photoImageView.image = photo.image
        photoNameLabel.text = photo.name
        photoButton.backgroundColor = photo.color
    }
}

