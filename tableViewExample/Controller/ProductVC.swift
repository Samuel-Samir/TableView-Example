//
//  ProductVC.swift
//  tableViewExample
//
//  Created by Sameul Samir on 8/14/19.
//  Copyright © 2019 Sameul Samir. All rights reserved.
//

import UIKit

class ProductVC: UIViewController {

    private(set) public var products = [Product]()
    @IBOutlet weak var productCollectionView :UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.productCollectionView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func initProducts (category :Category){
        products  = DataService.instance.getProducts(forCategoryTitle: category.title)
        
    }

}

extension ProductVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell  =  collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            cell.updateView(product: products[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    

}



//if let cell =  tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
//    cell.updteView(category: DataService.instance.getCategories()[indexPath.row])
//    return cell
//}
//else {
//    return UITableViewCell()
//}
