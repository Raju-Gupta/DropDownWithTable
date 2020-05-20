//
//  ViewController.swift
//  DropDown
//
//  Created by Raju Gupta on 25/04/20.
//  Copyright © 2020 Raju Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnGender: UIButton!
    @IBOutlet weak var btnFruit: UIButton!
    
    
    var genderArr = ["Male","Female"]
    
    var FruitArr = ["Apple","Banana","Straberry","Orange"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func addDropDown(elements : [String], btn: UIButton){
        let vc = storyboard?.instantiateViewController(identifier: "ViewController2") as! ViewController2
        vc.btn = btn
        vc.elements = elements
        addChild(vc)
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
        vc.addDropDownList()
    }
    
    @IBAction func onClickGender(_ sender: Any) {
        addDropDown(elements: genderArr, btn: btnGender)
    }
    
    @IBAction func onClickFruit(_ sender: Any) {
        addDropDown(elements: FruitArr, btn: btnFruit)
    }
    
    
}

