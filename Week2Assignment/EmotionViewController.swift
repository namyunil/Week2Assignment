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
    
    var tappedButtonCount = [0, 0, 0, 0, 0]
    
    // 버튼의 Tag와 Enum의 원시값을 이용하여 이미지 대입
    
    // 원시값을 String으로
    //    enum Emotion: String {
    //        case firstButton = "emoji1"
    //        case secondButton = "emoji2"
    //        case thirdButton = "emoji3"
    //        case forthButton = "emoji4"
    //        case fifthButton = "emoji5"
    // }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        firstButton.tag = Emotion.superHappy.rawValue
        secondButton.tag = Emotion.happy.rawValue
        thirdButton.tag = Emotion.normal.rawValue
        forthButton.tag = Emotion.sad.rawValue
        fifthButton.tag = Emotion.superSad.rawValue
        

        
        
        
        designEmotionButton(button: firstButton, backgroundColor: .systemPink)
        designEmotionButton(button: secondButton, backgroundColor: .systemYellow)
        designEmotionButton(button: thirdButton, backgroundColor: .systemGreen)
        designEmotionButton(button: forthButton, backgroundColor: .systemBlue)
        designEmotionButton(button: fifthButton, backgroundColor: .systemPurple)


        
        
    }
    
    func designEmotionButton(button: UIButton, backgroundColor: UIColor) {

        var config = UIButton.Configuration.filled()
        config.image = UIImage(named: "emoji\(button.tag)")
        config.baseBackgroundColor = backgroundColor
        config.baseForegroundColor = .white
        button.configuration = config
        
    }

//
//    func designEmotionButton(button: UIButton , emotionImage: String, backgroundColor: UIColor) {
//
//
//        button.backgroundColor = backgroundColor
//        button.setImage(UIImage(named: String), for: .normal)
//        button.tintColor = .white
//
//    }
    
    
    // 배열을 활용하여

    
    @IBAction func emotionButtonTapped(_ sender: UIButton) {
        
        tappedButtonCount[sender.tag - 1] += 1
        print(tappedButtonCount[sender.tag - 1])

        
    }
    
    

}
