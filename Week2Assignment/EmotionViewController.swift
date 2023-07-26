//
//  EmotionViewController.swift
//  Week2Assignment
//
//  Created by NAM on 2023/07/26.
//

import UIKit

class EmotionViewController: UIViewController {

    
    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!
    @IBOutlet var forthButton: UIButton!
    @IBOutlet var fifthButton: UIButton!
    
    enum emotion: String {
        case firstButton = "emoji1"
        case secondButton = "emoji2"
        case thirdButton = "emoji3"
        case forthButton = "emoji4"
        case fifthButton = "emoji5"
    }
    
//    var config = UIButton.Configuration.filled()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designEmotionButton(button: firstButton, emotionImage: emotion.firstButton.rawValue, backgroundColor: .systemPink)
        designEmotionButton(button: secondButton, emotionImage: emotion.secondButton.rawValue, backgroundColor: .systemYellow)
        designEmotionButton(button: thirdButton, emotionImage: emotion.thirdButton.rawValue, backgroundColor: .systemGreen)
        designEmotionButton(button: forthButton, emotionImage: emotion.forthButton.rawValue, backgroundColor: .systemBlue)
        designEmotionButton(button: fifthButton, emotionImage: emotion.fifthButton.rawValue, backgroundColor: .systemPurple)


        
        
    }
    
//    func designEmotionButton(button: UIButton, emotionImage: String, backgroundColor: UIColor) {
//
//
//        config.image = UIImage(named: "")
//        config.baseBackgroundColor = backgroundColor
//        config.baseForegroundColor = .white
//
//        let button = UIButton(configuration: config)
//    }


    func designEmotionButton(button: UIButton , emotionImage: String, backgroundColor: UIColor) {
        
        button.backgroundColor = backgroundColor
        button.setImage(UIImage(named: emotionImage), for: .normal)
        button.tintColor = .white
        
    }
    
    
    
    func countButtonTapped(button: UIButton) {
        
        button.tag += 1
        print(button.tag)
    }

    
    @IBAction func emotionButtonTapped(_ sender: UIButton) {
        
        countButtonTapped(button: sender)
        
        
    }
    
    

}
