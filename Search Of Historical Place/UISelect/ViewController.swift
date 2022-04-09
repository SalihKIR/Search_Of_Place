//
//  ViewController.swift
//  Search Of Historical Place
//
//  Created by Salih KIR on 4.04.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
   let placeBuffer : [String] = ["Berllin_War","Eiffel_Tower","Irak","Köln","Leaning_Tower_of_Pisa","Moskova","Telaviv"]
    @IBOutlet weak var tableViewContoroller: UITableView!
    var placesTableView = [placeModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewContoroller.delegate = self
        tableViewContoroller.dataSource = self
        tableViewContoroller.register(PlaceCell.nibName, forCellReuseIdentifier: PlaceCell.identifier)
        // Do any additional setup after loading the view.
        let pc = placeModel(pcname: "Almanya", artname: "German People", datename: UIImage(named: "Berlin_War")!)
        let pc1 = placeModel(pcname: "Fransa", artname: "Fransa People", datename: UIImage(named: "Eiffel_Tower")!)
        let pc2 = placeModel(pcname: "Irak", artname: "Irak People", datename: UIImage(named: "Irak")!)
        let pc3 = placeModel(pcname: "Germany", artname: "Almanya People", datename: UIImage(named: "Koln")!)
        let pc4 = placeModel(pcname: "İtalya", artname: "İtaly People", datename: UIImage(named: "Leaning_Tower_of_Pisa")!)
        let pc5 = placeModel(pcname: "Russian", artname: "Russian People", datename: UIImage(named: "Moskova")!)
        let pc6 = placeModel(pcname: "Israel", artname: "German People", datename: UIImage(named: "Telaviv")!)
        let placeMode = [pc,pc1,pc2,pc3,pc4,pc5,pc6]
        placesTableView = placeMode
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return placeBuffer.count
        return placesTableView.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let placecelll = tableView.dequeueReusableCell(withIdentifier: PlaceCell.identifier, for: indexPath) as! PlaceCell
        placecelll.setImage(image: placesTableView[indexPath.row].pictureName)
        placecelll.selectionStyle = .none
        return placecelll
            }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let second = DetailsOfVC.instantiate(storyboard: .details)
        second.placesTableVieww = placesTableView
        self.navigationController?.pushViewController(second, animated: true)
    }
    @IBAction func buttonDeneme(_ sender: Any) {
        let second = DetailsOfVC.instantiate(storyboard: .details)
        self.navigationController?.pushViewController(second, animated: true)
    }
    
}

