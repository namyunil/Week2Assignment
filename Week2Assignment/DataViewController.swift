//
//  DataViewController.swift
//  Week2Assignment
//
//  Created by NAM on 2023/07/26.
//

import UIKit

class DataViewController: UIViewController {
    
    @IBOutlet var superHappyLabel: UILabel!
    @IBOutlet var happyLabel: UILabel!
    @IBOutlet var normalLabel: UILabel!
    @IBOutlet var sadLabel: UILabel!
    @IBOutlet var superSadLabel: UILabel!
    
    @IBOutlet var superHappyResultLabel: UILabel!
    @IBOutlet var happyResultLabel: UILabel!
    @IBOutlet var normalResultLabel: UILabel!
    @IBOutlet var sadResultLabel: UILabel!
    @IBOutlet var superSadResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designLabel(label: superHappyLabel, textcolor: .white, backgroundColor: .systemPink)
        designLabel(label: happyLabel, backgroundColor: .systemYellow)
        designLabel(label: normalLabel, backgroundColor: .systemGreen)
        designLabel(label: sadLabel, backgroundColor: .systemBlue)
        designLabel(label: superSadLabel, textcolor: .white, backgroundColor: .systemPurple)
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        superHappyResultLabel.text = "\(UserDefaults.standard.integer(forKey: "superHappyButtonCount"))"
        happyResultLabel.text = "\(UserDefaults.standard.integer(forKey: "happyButtonCount"))"
        normalResultLabel.text = "\(UserDefaults.standard.integer(forKey: "normalButtonCount"))"
        sadResultLabel.text = "\(UserDefaults.standard.integer(forKey: "sadButtonCount"))"
        superSadResultLabel.text = "\(UserDefaults.standard.integer(forKey: "superSadButtonCount"))"

        
    }
    func designLabel(label: UILabel, textcolor: UIColor = .black, backgroundColor: UIColor) {
        label.textColor = textcolor
        label.backgroundColor = backgroundColor
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        
        
        
        
        
        
    }
    
}

