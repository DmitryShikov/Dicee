//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceViewModel2: UIImageView!
    @IBOutlet weak var diceVIewModel1: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    var array: Array<UIImage>? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initArray()
        rollButton.backgroundColor = UIColor(red: 0.4, green: 1.0, blue: 0.2, alpha: 0.5)
        rollButton.addTarget(self, action: #selector(tapRollButton(_:)), for: UIControl.Event.touchUpInside)
    }

    
    private func initArray() {
        var imageViewList = Array<UIImage>()
        imageViewList.append(UIImage(imageLiteralResourceName: "DiceOne"))
        imageViewList.append(UIImage(imageLiteralResourceName: "DiceTwo"))
        imageViewList.append(UIImage(imageLiteralResourceName: "DiceThree"))
        imageViewList.append(UIImage(imageLiteralResourceName: "DiceFour"))
        imageViewList.append(UIImage(imageLiteralResourceName: "DiceFive"))
        imageViewList.append(UIImage(imageLiteralResourceName: "DiceSix"))
        self.array = imageViewList
    }
    
    @IBAction func tapRollButton(_ sender: UIButton) {
        diceVIewModel1.image = array?.randomElement()
        diceViewModel2.image = array?.randomElement()
    }
}

