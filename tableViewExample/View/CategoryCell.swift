//
//  CategoryCell.swift
//  tableViewExample
//
//  Created by Sameul Samir on 8/12/19.
//  Copyright © 2019 Sameul Samir. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
//     @IBOutlet weak var categoryTabelView: UITableView!
    @IBOutlet weak var categoryName: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updteView (category :Category){
        categoryName.text = category.title
        categoryImage.image =  UIImage(named: category.imageName)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
