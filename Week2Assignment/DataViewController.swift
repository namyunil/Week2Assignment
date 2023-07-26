//
//  DataViewController.swift
//  Week2Assignment
//
//  Created by NAM on 2023/07/26.
//

import UIKit

class DataViewController: UIViewController {
    
    @IBOutlet var firstResultLabel: UILabel!
    @IBOutlet var secondResultLabel: UILabel!
    @IBOutlet var thirdResultLabel: UILabel!
    @IBOutlet var forthResultLabel: UILabel!
    @IBOutlet var fifthResultLabel: UILabel!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designLabel(label: firstResultLabel, textcolor: .white, backgroundColor: .systemPink)
        designLabel(label: secondResultLabel, backgroundColor: .systemYellow)
        designLabel(label: thirdResultLabel, backgroundColor: .systemGreen)
        designLabel(label: forthResultLabel, backgroundColor: .systemBlue)
        designLabel(label: fifthResultLabel, textcolor: .white, backgroundColor: .systemPurple)
    }
    
    
    func designLabel(label: UILabel, textcolor: UIColor = .black, backgroundColor: UIColor) {
        label.textColor = textcolor
        label.backgroundColor = backgroundColor
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        
        
        
        
        
    }
    
}

