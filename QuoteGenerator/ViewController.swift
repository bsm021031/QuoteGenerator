//
//  ViewController.swift
//  QuoteGenerator
//
//  Created by Seungmin Baek on 2022/06/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(content: "그 모든 것의 정면에서 다시 처음부터, 붙잡아야지.\n잃어가던 것.", name: "- E-Sens"),
        Quote(content: "왜냐면 난 내가 내 꿈의 근처라도 가보고는\n죽어야지 싶더라고.", name: "- Beenzino"),
        Quote(content: "내게 흔한 스펙 니 눈엔 학력위조. 그래 저는 웬만한 학력 위죠.\n넌 줘도 소화 못해\n그게 네가 배아픈 이유", name: "- Tablo"),
        Quote(content: "어차피 행복이란건 수많은\nNG 끝에 얻는 한컷", name: "- GARY"),
        Quote(content: "세대를 뒤집어 대세가 된 지코 딘 못지않게 시작해,\n이건 이 도시를 뒤집을 시도지", name: "- Olltii"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5))
        let quote = quotes[random]
        
        self.quoteLabel.text = quote.content
        self.nameLabel.text = quote.name
    }
    
}

