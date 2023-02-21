//
//  ViewController.swift
//  HelloWorld
//
//  Created by 黑白狗 on 1/14/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelExample: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func pressMeAction(_ sender: UIButton) {
        labelExample.text="Hello World"
    }
    
}

