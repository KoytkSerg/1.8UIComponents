//
//  ViewController.swift
//  HW8
//
//  Created by Sergii Kotyk on 11/3/21.
//

import UIKit

class ViewController: UIViewController {
    let images = [UIImage(named: "Unknown"), UIImage(named: "Unknown2"), UIImage(named: "Unknown3"), UIImage(named: "Unknown4"), UIImage(named: "Unknown5"), UIImage(named: "Unknown6"), UIImage(named: "Unknown7"), UIImage(named: "Unknown8"), UIImage(named: "Unknown9"), UIImage(named: "Unknown10")]
    override func viewDidLoad() {
        super.viewDidLoad()
        mainImage.image = images[numb]
    }
    var numb = 0
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBAction func BackButton(_ sender: Any) {
        if numb == 0 {
            mainImage.image = images[9]
            numb = 9
        }
        else{
            numb -= 1
            mainImage.image = images[numb]
                
            }
    }
    
    @IBAction func NextButtom(_ sender: Any) {
        if numb == 9 {
            mainImage.image = images[0]
            numb = 0
        }else{
            numb += 1
            mainImage.image = images[numb]
        }
        
         
    }
}

