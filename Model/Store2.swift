//
//  Store2.swift
//  LCS-Meal
//
//  Created by Yining Wang on 2021-03-24.
//

import Foundation



class ApiData2: ObservableObject {
    
    @Published var getData:[Menu] = [Menu(id: 0,  date: "", breakfast: "", lunch: "", dinner: "")]
    
    func updateData(){
        let url = URL(string: "https://api.sheety.co/1007332c901d57efcf2bbf111b1caaa0/dineInOrTakeOut/list")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            
            if let placeholder = try? JSONDecoder().decode(MealMenu.self, from: data){
                self.getData = placeholder.list
            }
            
        }.resume()
    }
    init() {
        self.updateData()
    }
    
    
