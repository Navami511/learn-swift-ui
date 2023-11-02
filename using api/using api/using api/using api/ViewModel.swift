//
//  ViewModel.swift
//  using api
//
//  Created by Navami Ajay on 27/10/23.
//

import Foundation
import SwiftUI
final class ViewModel: ObservableObject, View {
    var body: ViewModel
    //typealias Body = ViewModel
    
    @Published var isPresented: Bool = false
    //var data = Food(from: Decoder() as! Decoder)
    @State var foods: Food
    //    @Published var foods = Food(from: JSONDecoder() as! Decoder , name: "",
    //                              calories: "",
    //                           serving_size_g: "",
    //                           fat_total_g: "",
    //                           fat_saturated_g: "",
    //                           protein_g: "",
    //                           sodium_mg: "",
    //                           potassium_mg: "",
    //                           cholesterol_mg: "",
    //                           carbohydrates_total_g: "",
    //                           fiber_g: "",
    //                           sugar_g: ""
    //                           )
    //let networkManager: NetworkManager
    
    //    init(isPresented: Bool, foods: Food) {
    //        self.isPresented = isPresented
    //        self.foods = foods
    //        //self.networkManager = networkManager
    //    }
    
    init?() {
        body = ViewModel()!
        isPresented = false
        do{
            self.foods = try Food(from: JSONDecoder() as! Decoder)
        } catch {
            return nil
        }
        
    }
}

