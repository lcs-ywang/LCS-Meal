//
//  ScheduleView.swift
//  LCS-Meal
//
//  Created by Yining Wang on 2021-03-23.
//

import SwiftUI

struct ScheduleView: View {
    @State var details:[DineDetail] = []
    var house = ""
    
    private var todayDate : String{
        return "2/16/2021"
    }
    
    var body: some View {
        VStack{
            Form{
                ForEach(0..<details.count){ num in
                    if details[num].date == todayDate{ // Simple Filter
                       
                    }
                }
            }
            .navigationBarTitle("\(house)")
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
