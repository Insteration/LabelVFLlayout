//
//  ViewController.swift
//  LabelVFLlayout
//
//  Created by Артём Кармазь on 5/15/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LabelProtocol {
    
    private var myLabels = [MyLabel]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabels = getLabelArray()
        
        myLabels.forEach {
            self.view.addSubview($0)
        }
        
        let dictionary = ["l0":myLabels[0],"l1":myLabels[1],"l2":myLabels[2],"l3":myLabels[3],"l4":myLabels[4]]
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-50-[l0]-10-[l1]-10-[l2]-10-[l3]-10-[l4]", options: [], metrics: nil, views: dictionary))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[l0]-10-[l1]-10-[l2]-10-[l3]-10-[l4]", options: [], metrics: nil, views: dictionary))
    }
    
    
}

