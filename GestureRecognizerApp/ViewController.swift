//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by cem bayat on 16.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }

    var myBoolen = false
    
    @objc func changePic() {
        
        if myBoolen == true{
            imageView.image = UIImage(named: "james")
            myLabel.text = "James Hetfield"
            myBoolen = false
        }else if myBoolen == false{
            imageView.image = UIImage(named: "lars")
            myLabel.text = "Lars Ulrich"
            myBoolen = true
        }
        
    }
    
}

