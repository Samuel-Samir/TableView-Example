//
//  ViewController.swift
//  tableViewExample
//
//  Created by Sameul Samir on 8/12/19.
//  Copyright © 2019 Sameul Samir. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController {

    @IBOutlet weak var categoryTabelView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTabelView.dataSource = self
        categoryTabelView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension CategoriesVC : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell =  tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            cell.updteView(category: DataService.instance.getCategories()[indexPath.row])
            return cell
        }
       else {
         return UITableViewCell()
        }
    }
}
extension CategoriesVC : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductVC", sender: category)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductVC {
            productVC.initProducts(category: sender as! Category)
        }
    }
    
}

