//
//  HomeTableViewController.swift
//  2210991508_Test2
//
//  Created by Dhruv Jain on 23/11/24.
//

import UIKit

class HomeTableViewController: UITableViewController {

        
        var meals: [Meal] = [
            Meal(name: "Pancakes", calories: 220, preparationTime: 15, image: UIImage(named: "Pancakes")),
            Meal(name: "Spaghetti Bolognese", calories: 450, preparationTime: 25, image: UIImage(named: "Bolognese")),
            Meal(name: "Caesar Salad", calories: 180, preparationTime: 10, image: UIImage(named: "Salad"))

        ]

        override func viewDidLoad() {
            super.viewDidLoad()
            self.title = "Meal Planner"
        }

      
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return meals.count
        }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as! MealTableViewCell
            let meal = meals[indexPath.row]
            cell.recipeNameLabel.text = meal.name
            cell.calorieLabel.text = "Calories: \(meal.calories)"
            cell.preparationTimeLabel.text = "Time: \(meal.preparationTime) mins"
            cell.recipeImageView.image = meal.image
            return cell
        }

        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: "toMealDetails", sender: meals[indexPath.row])
        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "toMealDetails" {
                let destination = segue.destination as! MealDetailsViewController
                destination.meal = sender as? Meal
            }
        }
    }

