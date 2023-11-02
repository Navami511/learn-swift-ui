//
//  NetworkManager.swift
//  using api
//
//  Created by Navami Ajay on 27/10/23.
//

import Foundation
class NetworkManager: ObservableObject{
    let urlSession = URLSession.shared
    let decoder = JSONDecoder()
    //var queryParams: [String: String] = [:]
    @Published var foods = Food?.self
    
//    init() {
//        // Load data when the ViewModel is initialized
//        loadData(query: "query") { foods in
//            self.foods = [Food].self
//        }
//    }
    
    func loadData(query: String, completion: @escaping (Food) -> ()) {
        
        //print("entered function load data")
        
        let query = query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        if let query = query {
            
            let apiKey = "JBCsFOXTEpt4maQpimUGTw==6VylWxzvhXOjq7hW"
            
            let urlString = "https://api.api-ninjas.com/v1/nutrition?query=\(query)"
            
            guard let url = URL(string: urlString) else {
                print("Invalid URL")
                return
            }
            
            var request = URLRequest(url: url)
            request.setValue(apiKey, forHTTPHeaderField: "X-Api-Key")
            
            //print("Making API Request")
            
            urlSession.dataTask(with: request) { data, response, error in
                if let data = data {
                    
                    do {
                        
                        let jsonString = String(data: data, encoding: .utf8)
                        print("Received JSON: \(jsonString ?? "Unable to decode")")
                        
                        
                        if let foods = try? self.decoder.decode(Food.self, from: data){
                            
                            //print("Decoded Foods: \(foods)")
                            
                            //print(foods)
                            DispatchQueue.main.async {
                                completion(foods)
                            }
                        }else{
                            print("error decoding JSON")
                        }
                    }catch {
                        print("Error: \(error)")
                    }
                    } else if let error = error {
                        print("Error fetching data: \(error)")
                    }
                    else {
                        print("error unknown")
                    }
                }.resume()
            }
        }
        
    }
    

