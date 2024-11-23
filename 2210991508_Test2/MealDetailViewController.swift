//
//  MealDetailViewController.swift
//  2210991508_Test2
//
//  Created by Dhruv Jain on 23/11/24.
//

import UIKit

class MealDetailsViewController: UIViewController {

        var meal: Meal?


    
    @IBOutlet var mealImageView: UIImageView!
    
    @IBOutlet var mealNameLabel: UILabel!
    
    @IBOutlet var calorieLabel: UILabel!
    
    @IBOutlet var preparationTimeLabel: UILabel!
    
    override func viewDidLoad() {
            super.viewDidLoad()

            // Populate the view with meal details
            if let meal = meal {
                mealNameLabel.text = meal.name
                calorieLabel.text = "Calories: \(meal.calories)"
                preparationTimeLabel.text = "Preparation Time: \(meal.preparationTime) mins"
                mealImageView.image = meal.image
            }
        }
    }
