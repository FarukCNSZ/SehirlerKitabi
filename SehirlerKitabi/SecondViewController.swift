//
//  SecondViewController.swift
//  SehirlerKitabi
//
//  Created by Faruk CANSIZ on 24.12.2022.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    var secilenSehir : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstLabel.text = secilenSehir?.isim
        secondLabel.text = secilenSehir?.bölge
        imageView.image = secilenSehir?.image
        
        
    }
    

}
