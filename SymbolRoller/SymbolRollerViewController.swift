//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by 김세준 on 2022/09/02.
//

import UIKit

class SymbolRollerViewController: UIViewController {
    
    let symbols: [String] = ["sun.min","moon","cloud","wind","snowflake"]

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    //dry = do not repeat yourself = 중복코드를 보고 참지말아라
    // 함수를 만들어라
    //로드
    override func viewDidLoad() {
        super.viewDidLoad()
        button.tintColor = UIColor.systemPink
        // TODO
        // 심볼에서 하나를 임의로 추출해서
        // 이미지와 텍스트를 설정을 한다
        
        reload()
     
    }
    //준비
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    //나타남
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    //누르면 랜덤으로 이미지,라벨을 불러오는 함수
    func reload() {
        let symbol = symbols.randomElement()!
        
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }
}
 
