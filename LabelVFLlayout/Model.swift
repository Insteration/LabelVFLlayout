//
//  Model.swift
//  LabelVFLlayout
//
//  Created by Артём Кармазь on 5/15/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import UIKit

class MyLabel: UILabel {
    
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 100, height: 20))
        backgroundColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
        tintColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
        textColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
        textAlignment = .center
        
        text = {
            var text = String()
            let count = Int.random(in: 3...8)
            
            for _ in 1...count {
                text += String(Int.random(in: 0...9))
            }
            return text
        }()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

protocol LabelProtocol {
    func getLabelArray() -> [MyLabel]
}

extension LabelProtocol {
    
    func getLabelArray() -> [MyLabel] {
        var array = [MyLabel]()
        
        for _ in 1...5 {
            array.append(MyLabel())
        }
        
        return array
    }

}
