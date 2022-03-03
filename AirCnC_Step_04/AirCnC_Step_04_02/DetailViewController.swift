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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        }
    }

}
