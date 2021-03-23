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
        let now = Date()
        let calendar = Calendar.current
        
        let day = calendar.component(.day, from:now)
        let month = calendar.component(.month, from:now)
        let year = calendar.component(.year, from:now)
        return "\(day)/\(month)/\(year)"
    }
    
    var body: some View {
        VStack{
            Form{
                ForEach(0..<details.count){ num in
                    if details[num].date == todayDate{// Simple Filter
                        Section(header: Text("\(house)'s Breakfast")){
                            Text("House: \(details[num].house)")
                            Text("Location: \(details[num].brLocation)")
                            Text("Time: \(details[num].brTime)")
                            Text("Date: \(details[num].date)")
                        }
                        Section(header: Text("\(house)'s Lunch")){
                            Text("House: \(details[num].house)")
                            Text("Location: \(details[num].luLocation)")
                            Text("Time: \(details[num].luTime)")
                            Text("Date: \(details[num].date)")
                        }
                        
                        Section(header: Text("\(house)'s Diner")){
                            Text("Location: \(details[num].diLocation)")
                            Text("Time: \(details[num].diTime)")
                            Text("Date: \(details[num].date)")
                        
                        }
                        
                        
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
