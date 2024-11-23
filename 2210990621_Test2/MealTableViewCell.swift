//
//  MealTableViewCell.swift
//  2210990621_Test2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var calorieLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func update(with meal: Meal){
        nameLabel.text=meal.recipeName
        calorieLabel.text=String(meal.calorieCount)
        timeLabel.text=String(meal.preperationTime)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
