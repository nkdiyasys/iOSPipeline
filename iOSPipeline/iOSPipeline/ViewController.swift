//
//  ViewController.swift
//  iOSPipeline
//
//  Created by Nithin Kumar on 4/17/20.
//  Copyright © 2020 Diya Systems. All rights reserved.
//

import UIKit
import PDFKit

class ViewController: UIViewController {

    @IBOutlet weak var pdfView: PDFView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pdfViewFunc()

    }
    func pdfViewFunc() {
           
           
           guard let path = Bundle.main.url(forResource: "sample", withExtension: "pdf") else { return }

           if let document = PDFDocument(url: path) {
               pdfView.document = document
           }
           
       }

    @IBAction func tapMeClicked(_ sender: Any) {
    let alert = UIAlertController.init(title: "Test", message: "Test alert", preferredStyle: .alert)

          alert.addAction(UIAlertAction.init(title: "Done", style: .default, handler: { (action) in
              alert.dismiss(animated: true, completion: nil)
          }))

          self.present(alert, animated: true, completion: nil)
      
    }
}

