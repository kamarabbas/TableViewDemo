//
//  ViewController.swift
//  TableviewApp
//
//  Created by KAMAR ABBAS SAIYAD on 10/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    var tbl_list = [""]
    var det=[""]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tbl_list=["apple","mango","banana","papaya","grapes","cherry"]
        det=["healtyh","very tasty","delicious","use as medecine","juicy","fine"]
    }


}
extension ViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tbl_list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text=tbl_list[indexPath.row]
        cell.detailTextLabel?.text=det[indexPath.row]
        return cell
    }
    
    
    
}

