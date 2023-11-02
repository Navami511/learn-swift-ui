//
//  ContentView.swift
//  using api
//
//  Created by Navami Ajay on 27/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var foodName : String = ""
    @State private var isPresented: Bool = false
    @ObservedObject var model : ViewModel
    //@Binding var data: Food
    @State var query: String = ""
    //@Binding var foods = Food(from: JSONDecoder() as! Decoder)
    @Binding var foods : Food
    init(foods: Binding<Food>) {
        self._foods = foods
        self.model = ViewModel()!
    }
    
    func getNutrition() {
        let query = /*"1lb brisket and fries"*/ foodName
        NetworkManager().loadData(query: query) { (foods) in
            self.foods = foods
        }
    }

    var body: some View {
        
        VStack {
            TextField("Enter the Food Item", text: $foodName)
                .frame(width: 300, height: 33, alignment: .center)
                .border(Color.black)
                .foregroundColor(Color.black)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                isPresented = false
                getNutrition()
                
                
            }, label: {
                Text("Search")
            })
            .frame(width: 100, height: 34, alignment: .center)
            .background(.yellow)
            .buttonStyle(.plain)
            .containerShape(.capsule)
            .sheet(isPresented: $isPresented, content: {
                VStack{
                    Text(foodName)
                        .font(.largeTitle)
                    List{
                        ForEach(Array(arrayLiteral: model.foods), id: \.id) { food in
                            Text("cal = \(model.foods.calories)")
                            Text("serving size (g) = \(model.foods.serving_size_g)")
                            Text("fats (g) = \(model.foods.fat_total_g)")
                            Text("saturated fats (g) = \(model.foods.fat_saturated_g)")
                            Text("proteins (g) =  \(model.foods.protein_g)")
                            Text("sodium (mg) =  \(model.foods.sodium_mg)")
                            Text("pottasium (mg) =  \(model.foods.potassium_mg)")
                            Text("cholesterol (mg) =  \(model.foods.cholesterol_mg)")
                            Text("carbohydrates (g) =  \(model.foods.carbohydrates_total_g)")
                            Text("fiber (g) =  \(model.foods.fiber_g)")
                            Text("sugar (g) = \(model.foods.sugar_g)")

                        }
                    }
                }
            }
            )}
        }
        
    }

#Preview {
    ContentView()
}

