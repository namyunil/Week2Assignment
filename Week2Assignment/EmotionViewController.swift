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
    
    var tappedButtonCount = [0, 0, 0, 0, 0] // UserDefaults
    
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


        // ViewDidLoad()에서 호출하면, 실행할따마다 값이 덮어씌워지기 때문에 영구저장이 불가하다.
        // -> 아래 IBAction 함수에서 선언하면 가능..!
        // 배열 활용이 아닌 다른 방법으로도 구현해보자..!
//        UserDefaults.standard.set(tappedButtonCount[0], forKey: "superHappyButtonCount")
//        UserDefaults.standard.set(tappedButtonCount[1], forKey: "happyButtonCount")
//        UserDefaults.standard.set(tappedButtonCount[2], forKey: "normalButtonCount")
//        UserDefaults.standard.set(tappedButtonCount[3], forKey: "sadButtonCount")
//        UserDefaults.standard.set(tappedButtonCount[4], forKey: "superSadButtonCount")
//
    }
    
    func designEmotionButton(button: UIButton, backgroundColor: UIColor) {
        
        if let emotion = Emotion.init(rawValue: button.tag) {
            var config = UIButton.Configuration.filled()
            config.image = UIImage(named: emotion.assetName)
        }
        //Asset명을 1,2,3,4,5로 바꾼다면?
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
//        print(tappedButtonCount[sender.tag - 1])
        
        
        let superHappyButtonValue =  UserDefaults.standard.integer(forKey: "superHappyButtonCount")
        let happyButtonValue =  UserDefaults.standard.integer(forKey: "happyButtonCount")
        let normalButtonValue =  UserDefaults.standard.integer(forKey: "normalButtonCount")
        let sadButtonValue =  UserDefaults.standard.integer(forKey: "sadButtonCount")
        let superSadButtonValue =  UserDefaults.standard.integer(forKey: "superSadButtonCount")
        
        let superHappyButtonResult = superHappyButtonValue + 1
        let happyButtonResult = happyButtonValue + 1
        let normalButtonResult = normalButtonValue + 1
        let sadButtonResult = sadButtonValue + 1
        let superSadButtonResult = superSadButtonValue + 1
        
        // 버튼 클릭시 + 1씩 영구 저장
        switch sender.tag {
        case 1:
            UserDefaults.standard.set(superHappyButtonResult, forKey: "superHappyButtonCount")
        case 2:
            UserDefaults.standard.set(happyButtonResult, forKey: "happyButtonCount")
        case 3:
            UserDefaults.standard.set(normalButtonResult, forKey: "normalButtonCount")
        case 4:
            UserDefaults.standard.set(sadButtonResult, forKey: "sadButtonCount")
        case 5:
            UserDefaults.standard.set(superSadButtonResult, forKey: "superSadButtonCount")
        default:
            return print("변화 없음")
        }
       
//        if sender.tag == 1 {
//            UserDefaults.standard.set(superHappyButtonResult, forKey: "superHappyButtonCount")
//        }
//        UserDefaults.standard.set(superHappyButtonValue, forKey: "superHappyButtonCount")
//        UserDefaults.standard.set(happyButtonValue, forKey: "happyButtonCount")
//        UserDefaults.standard.set(normalButtonValue, forKey: "normalButtonCount")
//        UserDefaults.standard.set(sadButtonValue, forKey: "sadButtonCount")
//        UserDefaults.standard.set(superSadButtonValue, forKey: "superSadButtonCount")

        // 상수로 선언한 -Value를 넣으면 왜 안되는가?
        // 버튼을 눌러도 처음엔 0으로 출력
        // 다음 결과가 알맞은 값으로 나온다.
        // -> 상수로 선언 후 저장된 값이 변화해도 상수로 선언된 값은 변하지 않는다.
        // 시점 관련해서 코드 흐름따라 생각해보기..!
        
        print("-----")
        print(UserDefaults.standard.integer(forKey: "superHappyButtonCount")) // 2
        print(UserDefaults.standard.integer(forKey: "happyButtonCount")) // 0
        print(UserDefaults.standard.integer(forKey: "normalButtonCount")) // 0
        print(UserDefaults.standard.integer(forKey: "sadButtonCount"))
        print(UserDefaults.standard.integer(forKey: "superSadButtonCount"))

    }
    
    

}
