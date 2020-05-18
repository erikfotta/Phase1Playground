//
//  PrettyViewController.swift
//  Phase1Playground
//
//  Created by Erik Fotta on 5/7/20.
//  Copyright © 2020 Erik Fotta. All rights reserved.
//

import UIKit

class PrettyViewController: UIViewController {
    
    let lGray = UIColor(rgb: 0xf9fbfb)
    let blue = UIColor(rgb: 0x66d9ee)
    let orange = UIColor(rgb: 0xffb36a)
    let dGray = UIColor(rgb: 0x3a4a4d)
    let white = UIColor(rgb: 0xffffff)
        
    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet weak var mainTxt: UILabel!
    @IBOutlet weak var mainButtonView: UIView!
    @IBOutlet weak var colorButtonView: UIView!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var outlineView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Beautification
        mainButtonView.backgroundColor = orange
        mainButtonView.layer.cornerRadius = 10
        colorButtonView.backgroundColor = orange
        colorButtonView.layer.cornerRadius = 10
        navigationController?.navigationBar.barStyle = .black
        view.backgroundColor = lGray
        self.navigationController?.navigationBar.barTintColor = blue
        self.navigationController?.navigationBar.tintColor = white
        self.tabBarController?.tabBar.barTintColor = blue
        self.tabBarController?.tabBar.tintColor = white
        mainTxt.textColor = blue
        colorView.backgroundColor = blue
        colorView.layer.cornerRadius = 10
        outlineView.layer.cornerRadius = 10
    }
    
    //Status Bar Color
//https://stackoverflow.com/questions/33103831/change-status-bar-text-color-to-light-in-ios-9-with-objective-c
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // Color change & Color Panel Accessibility
    @IBAction func changeColor(_ sender: Any) {
        if colorView.backgroundColor == blue {
            colorView.backgroundColor = UIColor.green
            colorView.accessibilityLabel = "Color Sample: Green"
        } else {
            colorView.backgroundColor = blue
            colorView.accessibilityLabel = "Color Sample: Blue"
        }
    }
}

// Straight stole this from here:
//https://stackoverflow.com/questions/24263007/how-to-use-hex-color-values
extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}



