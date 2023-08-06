//
//  ViewController.swift
//  iOS101-Prework
//
//  Created by Mia Yamada-Heidner on 8/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeNameColor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(nameTapped))
                changeNameColor.addGestureRecognizer(tapGestureRecognizer)
                changeNameColor.isUserInteractionEnabled = true    }

    func changeColor() -> UIColor{
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @objc func nameTapped() {
        let randomColor = changeColor()
        changeNameColor.textColor = randomColor
    }
}

