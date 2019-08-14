//
//  ProductCell.swift
//  tableViewExample
//
//  Created by Sameul Samir on 8/14/19.
//  Copyright © 2019 Sameul Samir. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage :UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var prductPrice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateView(product :Product){
        self.productImage.image = UIImage(named: product.imageName)
        self.productName.text = product.title
        self.prductPrice.text = product.price
        
    }
    
}
