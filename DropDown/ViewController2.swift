//
//  ViewController2.swift
//  DropDown
//
//  Created by Raju Gupta on 01/05/20.
//  Copyright © 2020 Raju Gupta. All rights reserved.
//

import UIKit

class CellClasss: UITableViewCell {
    
}

class ViewController2: UIViewController {
    
    var elements = [String]()
    var btn : UIButton!
    @IBOutlet weak var tableV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableV.register(CellClasss.self, forCellReuseIdentifier: "Cell")
    }
    
    @IBAction func onClickViewButton(_ sender: Any) {
        self.view.removeFromSuperview()
    }

    
    func addDropDownList() {
        let frames = btn.frame
        tableV.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height + 5, width: frames.width, height: CGFloat(elements.count * 50))
        self.view.addSubview(tableV)
        tableV.layer.cornerRadius = 5
    }
}

extension ViewController2: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = elements[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        btn.setTitle(elements[indexPath.row], for: .normal)
        let frames = btn.frame
        tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: CGFloat(elements.count * 0))
        self.view.removeFromSuperview()
        
    }
    
    
    
}
