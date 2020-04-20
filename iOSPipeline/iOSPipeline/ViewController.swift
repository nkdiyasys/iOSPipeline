//
//  ViewController.swift
//  iOSPipeline
//
//  Created by Nithin Kumar on 4/17/20.
//  Copyright © 2020 Diya Systems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tapMeClicked(_ sender: Any) {
    let alert = UIAlertController.init(title: "Test", message: "Test alert", preferredStyle: .alert)

          alert.addAction(UIAlertAction.init(title: "Done", style: .default, handler: { (action) in
              alert.dismiss(animated: true, completion: nil)
          }))

          self.present(alert, animated: true, completion: nil)
      
    }
}

