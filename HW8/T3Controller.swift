//
//  T3Controller.swift
//  HW8
//
//  Created by Sergii Kotyk on 11/3/21.
//

import UIKit

class T3Controller: UIViewController {

    
    @IBOutlet weak var FirstView: UIView!
    
    
    @IBOutlet weak var SecondView: UIView!
    
    @IBOutlet weak var ThirdView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        FirstView.isHidden = false
        SecondView.isHidden = true
        ThirdView.isHidden = true
    }
    


    @IBAction func MainSeg(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            FirstView.isHidden = false
            SecondView.isHidden = true
            ThirdView.isHidden = true
        case 1:
            FirstView.isHidden = true
            SecondView.isHidden = false
            ThirdView.isHidden = true
        case 2:
            FirstView.isHidden = true
            SecondView.isHidden = true
            ThirdView.isHidden = false
        default:
            FirstView.isHidden = true
            SecondView.isHidden = true
            ThirdView.isHidden = true
        }
    }
    
}
