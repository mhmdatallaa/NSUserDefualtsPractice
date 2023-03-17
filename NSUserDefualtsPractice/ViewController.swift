//
//  ViewController.swift
//  NSUserDefualtsPractice
//
//  Created by Mohamed Atallah on 17/03/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var preferenceLabel: UILabel!
    @IBOutlet weak var midnightLabel: UILabel!
    @IBOutlet weak var swithControl: UISwitch!
    
    
    
    override func viewDidLoad() {
        if let midnight = UserDefaults.standard.value(forKey: "midnight") {
            if midnight as! Bool {
                setUIToMidnight()
            }
        }
        
    }


    @IBAction func swtichTheme(_ sender: UISwitch) {
        if sender.isOn {
            setUIToMidnight()
            UserDefaults.standard.set(true, forKey: "midnight")

        } else {
            setUIToDayTime()
            UserDefaults.standard.set(false, forKey: "midnight")

        }
    }
    
    
    private func setUIToMidnight() {
        imageView.image = UIImage(systemName: "moon.zzz.fill")
        swithControl.isOn = true
        imageView.tintColor = .white
        view.backgroundColor = .black
        preferenceLabel.textColor = .white
        midnightLabel.textColor = .white
    }
    
    private func setUIToDayTime() {
        imageView.image = UIImage(systemName: "sun.max.fill")
        swithControl.isOn = false
        imageView.tintColor = .yellow
        view.backgroundColor = .white
        preferenceLabel.textColor = .black
        midnightLabel.textColor = .black
    }
}

