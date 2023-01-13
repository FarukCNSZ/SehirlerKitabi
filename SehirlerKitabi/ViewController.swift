//
//  ViewController.swift
//  SehirlerKitabi
//
//  Created by Faruk CANSIZ on 24.12.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var sehirDizisi = [Sehir]()
    var kullaniciSecimi : Sehir?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableView.delegate = self
        tableView.dataSource = self
        
        let Istanbul = Sehir(isim: "İstanbul", bölge: "Marmara", image: UIImage(named: "istanbul")!)
        let Ankara = Sehir(isim: "Ankara", bölge: "İç Anadolu", image: UIImage(named: "ankara")!)
        let Izmir = Sehir(isim: "İzmir", bölge: "Ege", image: UIImage(named: "izmir")!)
        let Diyarkabir = Sehir(isim: "Diyarbakır", bölge: "Güneydoğu Anadolu", image: UIImage(named: "diyarbakır")!)
        let Antalya = Sehir(isim: "Antalya", bölge: "Akdeniz", image: UIImage(named: "anlatya")!)
        
        sehirDizisi = [Istanbul, Ankara, Izmir, Diyarkabir, Antalya]
    
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell .textLabel?.text = sehirDizisi[indexPath.row].isim
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullaniciSecimi = sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.secilenSehir = kullaniciSecimi
        }
    }
    
    
}

