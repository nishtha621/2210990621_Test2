//
//  Meals.swift
//  2210990621_Test2
//
//  Created by student-2 on 23/11/24.
//

import Foundation
struct Meal{
    var recipeName: String
    var calorieCount:Int
    var preperationTime:TimeInterval
}
struct Ingredients{
    var name:String
    var quantity:String
}
enum Category{
    case Vegetarian, NonVegetarian,GlutenFree
}
//    var ingredient:[Ingredients]
//    var preperationInstructions:String
//    var categorty:Category
//    var nutritionalInformation:String
