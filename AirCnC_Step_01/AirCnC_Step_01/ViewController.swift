//
//  ViewController.swift
//  AirCnC_Step_01
//
//  Created by 백민기 on 2022/02/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var depth: UILabel!
    @IBOutlet weak var width: UILabel!
    @IBOutlet weak var height: UILabel!
    
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var heartButton: UIButton!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var imageIndex = 0
    let imageSet = ["Cat1", "Cat2", "Cat3"]
    
    @IBAction func showPreviewImage(_ sender: Any) {
        imageIndex -= 1
        self.showImage(index: imageIndex)
    }
    
    @IBAction func showNextImage(_ sender: Any) {
        imageIndex += 1
        self.showImage(index: imageIndex)
    }
    
    func showImage(index: Int) {
        productImage.image = UIImage(named: imageSet[index])
        
        leftButton.isEnabled = index > 0
        rightButton.isEnabled = index < imageSet.count - 1
    }
    
    @IBAction func fillHeart(_ sender: Any) {
        heartButton.isSelected = !heartButton.isSelected
    }
    
    let dateFormatter = DateFormatter()
    @IBAction func dateController() {
        let dateStr = dateFormatter.string(from: datePicker.date)
        dateLabel.text = dateStr
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        leftButton.isEnabled = false
        dateFormatter.dateStyle = .medium
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        productImage.image = UIImage(named: imageSet[0])
        productName.text = "고양이1"
        
        userImage.image = UIImage(named: "Cat2")
        userName.text = "백민기"
        
        price.text = "100000"
        depth.text = "100"
        width.text = "200"
        height.text = "300"
        
        dateController()
        
    }
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
}

