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
        let url = URL(string: "https://api.sheety.co/7deed22e80a5e8242df797431ad2d48f/dineInOrTakeOut/list")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            
            if let placeholder = try? JSONDecoder().decode(Schedule.self, from: data){
                DispatchQueue.main.async {
                    self.getData = placeholder.list
                    print("Done")
                }
            }
            
        }.resume()
    }
    init() {
        self.updateData()
    }
    
    func filter(house:String) -> [DineDetail]{
        var result:[DineDetail] = []
        for detail in self.getData{
            
            if detail.house == house{
                result.append(detail)
            }
        }
        
        return result
    }
    
}


