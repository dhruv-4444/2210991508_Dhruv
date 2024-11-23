//
//  MealTableViewCell.swift
//  2210991508_Test2
//
//  Created by Dhruv Jain on 23/11/24.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    
    @IBOutlet weak var recipeImageView: UIImageView!
    
    @IBOutlet weak var recipeNameLabel: UILabel!
    
    @IBOutlet weak var calorieLabel: UILabel!
    
    @IBOutlet weak var preparationTimeLabel: UILabel!
    
    override func awakeFromNib() {
            super.awakeFromNib()
          
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
            
        }
    }

