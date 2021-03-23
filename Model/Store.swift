//
//  Store.swift
//  LCS-Meal
//
//  Created by Yining Wang on 2021-03-23.
//

import Foundation

class ApiData: ObservableObject {
    
    @Published var getData:[DineDetail] = [DineDetail(id: 0, house: "", date: "", brLocation: "", brTime: "", luLocation: "", luTime: "", diLocation: "", diTime: "")]
    
    func updateData(){
        let url = URL(string: "https://api.sheety.co/73a333855fd3edc50f8b28aba37efaa1/dineInOrTakeOut/list")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            
            if let placeholder = try? JSONDecoder().decode(Schedule.self, from: data){
                self.getData = placeholder.list
                print(placeholder)
            }
            
        }.resume()
    }
    
    
}
