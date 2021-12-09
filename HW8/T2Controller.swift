//
//  T2Controller.swift
//  HW8
//
//  Created by Sergii Kotyk on 11/3/21.
//

import UIKit

class T2Controller: UIViewController {
    
    let images = [UIImage(named: "Unknown"), UIImage(named: "Unknown2"), UIImage(named: "Unknown3"), UIImage(named: "Unknown4"), UIImage(named: "Unknown5"), UIImage(named: "Unknown6"), UIImage(named: "Unknown7"), UIImage(named: "Unknown8"), UIImage(named: "Unknown9"), UIImage(named: "Unknown10")]
        
    override func viewDidLoad() {
        super.viewDidLoad()

//        let imageWidth = 150.0
//        let imageHeight = imageWidth * 1.5
//
//        var imageCoordinateX = 0
//        var imageCoordinateY = 0
//        var labelCoordinateY = 0
//        var index = 0
//        var step = 0
//
//        for i in 0...3 {
//            if i % 2 == 0 && index % 2 == 0{
//                imageCoordinateX = 15
//                step += 1
//            } else {
//                imageCoordinateX = 200
//            }
//            index += 1
//            imageCoordinateY = (step * (Int(imageHeight) + 80)) + 50
//            labelCoordinateY = imageCoordinateY + Int(imageHeight) + 5
//
//            let imageView = UIImageView()
//            let label1 = UILabel()
//            let label2 = UILabel()
//            let label3 = UILabel()
//            imageView.image = images[i]
//            label1.text = "Картинка"
//            label2.text = "№"
//            label3.text = "\(i+1)"
//
//            if i == 0 || i == 1 {
//                imageView.frame = CGRect(x: imageCoordinateX, y: 50, width: Int(imageWidth), height: Int(imageHeight))
//                label1.frame = CGRect(x: imageCoordinateX, y: 290, width: Int(imageWidth), height: 20)
//                label2.frame = CGRect(x: imageCoordinateX, y: 310, width: Int(imageWidth), height: 20)
//                label3.frame = CGRect(x: imageCoordinateX, y: 330, width: Int(imageWidth), height: 20)
//                step = 0
//
//            } else {
//
//                imageView.frame = CGRect(x: imageCoordinateX, y: imageCoordinateY, width: Int(imageWidth), height: Int(imageHeight))
//                label1.frame = CGRect(x: imageCoordinateX, y: labelCoordinateY, width: Int(imageWidth), height: 20)
//                label2.frame = CGRect(x: imageCoordinateX, y: labelCoordinateY + 20, width: Int(imageWidth), height: 20)
//                label3.frame = CGRect(x: imageCoordinateX, y: labelCoordinateY + 40, width: Int(imageWidth), height: 20)
//            }
//
//            view.addSubview(imageView)
//            view.addSubview(label1)
//            view.addSubview(label2)
//            view.addSubview(label3)
//        }
        var x = 20 // for image  // 60 for label
        var y = 100 // for image  // 320 for label
        for i in 0...3 {
            let myLabel = UILabel(frame: CGRect(x: x + 40, y: y + 220, width: 80, height: 20))
            myLabel.textAlignment = .center
            myLabel.text = "#\(i)"
            
            let myLabel2 = UILabel(frame: CGRect(x: x + 40, y: y + 240, width: 80, height: 20))
            myLabel2.textAlignment = .center
            myLabel2.text = "Price"
            myLabel2.textColor = .red
            
            let myLabel3 = UILabel(frame: CGRect(x: x + 40, y: y + 260, width: 80, height: 20))
            myLabel3.textAlignment = .center
            myLabel3.text = "Name"
            
            let myImageView = UIImageView(frame: CGRect(x: x, y: y, width: 160, height: 210))
            myImageView.image = images[i]
            
            view.addSubview(myImageView)
            view.addSubview(myLabel)
            view.addSubview(myLabel2)
            view.addSubview(myLabel3)
            
            if x == 20 {
                x += 190
            }
            else {
                x -= 190
                y += 295
            }
        }
            
        
}

}
