//
//  DataModel.swift
//  using api
//
//  Created by Navami Ajay on 27/10/23.
//

import Foundation
struct Food: Codable{
    //let id = UUID()
    var name: String
    var calories: Double
    var serving_size_g: Double
    var fat_total_g: Double
    var fat_saturated_g: Double
    var protein_g: Double
    var sodium_mg: Double
    var potassium_mg: Double
    var cholesterol_mg: Double
    var carbohydrates_total_g: Double
    var fiber_g: Double
    var sugar_g: Double
    
    enum CodingKeys: String, CodingKey {
            // Define coding keys for each property to handle potential NaN values
            case name, calories, serving_size_g, fat_total_g, fat_saturated_g, protein_g, sodium_mg, potassium_mg, cholesterol_mg, carbohydrates_total_g, fiber_g, sugar_g
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            // Handle potential NaN values by setting them to 0.0
            name = try container.decode(String.self, forKey: .name)
            calories = try container.decodeIfPresent(Double.self, forKey: .calories) ?? 0.0
            serving_size_g = try container.decodeIfPresent(Double.self, forKey: .serving_size_g) ?? 0.0
            fat_total_g = try container.decodeIfPresent(Double.self, forKey: .fat_total_g) ?? 0.0
            fat_saturated_g = try container.decodeIfPresent(Double.self, forKey: .fat_saturated_g) ?? 0.0
            protein_g = try container.decodeIfPresent(Double.self, forKey: .protein_g) ?? 0.0
            sodium_mg = try container.decodeIfPresent(Double.self, forKey: .sodium_mg) ?? 0.0
            potassium_mg = try container.decodeIfPresent(Double.self, forKey: .potassium_mg) ?? 0.0
            cholesterol_mg = try container.decodeIfPresent(Double.self, forKey: .cholesterol_mg) ?? 0.0
            carbohydrates_total_g = try container.decodeIfPresent(Double.self, forKey: .carbohydrates_total_g) ?? 0.0
            fiber_g = try container.decodeIfPresent(Double.self, forKey: .fiber_g) ?? 0.0
            sugar_g = try container.decodeIfPresent(Double.self, forKey: .sugar_g) ?? 0.0
        }

}
