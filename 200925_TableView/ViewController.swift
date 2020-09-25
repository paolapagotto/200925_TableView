//
//  ViewController.swift
//  200925_TableView
//
//  Created by Paola Pagotto on 25/09/2020.
//  Copyright © 2020 Paola Pagotto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableViewList: UITableView!
    
    
    var arrayCarros = ["fiat", "honda", "ford", "renault", "bmw"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewList.delegate = self
        tableViewList.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let carro = arrayCarros[indexPath.row].capitalized
        print("Selecionou a marca \(carro)")
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCarros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let image = arrayCarros[indexPath.row] + ".png"
        cell.imageView?.image = UIImage(named: image)
        cell.textLabel?.text = arrayCarros[indexPath.row].capitalized
        return cell
    }
}

