//
//  DetailViewController.swift
//  AirCnC_Step_04_02
//
//  Created by 백민기 on 2022/03/02.
//

import UIKit

class DetailViewController: UIViewController {

    var chairData: Chairs?

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var ownerName: UILabel!
    @IBOutlet weak var ownerImage: UIImageView!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var length: UILabel!
    @IBOutlet weak var width: UILabel!
    @IBOutlet weak var height: UILabel!
    
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var heartButton: UIButton!
    
    var images: [String] = []
    var imageIndex: Int = 0
    
    func showImage(index: Int) {
        image.image = UIImage(named: images[imageIndex])
        
        rightButton.isEnabled = index > 0
        leftButton.isEnabled = index < images.count - 1
    }
    
    @IBAction func showPreviewImage(_ sender: Any) {
        imageIndex -= 1
        self.showImage(index: imageIndex)
    }
    
    @IBAction func showNextImage(_ sender: Any) {
        imageIndex += 1
        self.showImage(index: imageIndex)
    }
    
    @IBAction func handleHeartButton(_ sender: Any) {
        heartButton.isSelected = !heartButton.isSelected
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rightButton.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let chair = chairData {
            image.image = UIImage(named: chair.image)
            ownerName.text = chair.owner
            ownerImage.image = UIImage(named: chair.ownerImage)
            price.text = chair.price
            length.text = chair.length
            width.text = chair.width
            height.text = chair.height
            images = chair.detailImage
        }
        self.showImage(index: 0)
    }

}
