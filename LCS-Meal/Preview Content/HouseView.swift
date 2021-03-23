//
//  HouseView.swift
//  LCS-Meal
//
//  Created by Yining Wang on 2021-03-23.
//

import SwiftUI

struct HouseView: View {
    @State private var apiData = ApiData()
    private var houses:[String] = ["Ryder", "Wads", "Lower", "Ondaatje", "Matthews", "Uplands", "Memorial", "Moodie", "Cooper", "Grove", "Upper", "Rashleigh"]
    
    var body: some View {
        VStack{
            List{
                ForEach(0..<houses.count){ num in
                    
                    NavigationLink(destination: ScheduleView()){
                        Text("\(houses[num])")
                    }
                }
            }
            .navigationBarTitle("Houses")
        }
    }
}


struct HouseView_Previews: PreviewProvider {
    static var previews: some View {
        HouseView()
    }
}
