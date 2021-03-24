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
        let today = Date()
        let formatter1 = DateFormatter()
        formatter1.dateStyle = .short

        return (formatter1.string(from: today))
    }
    
    var body: some View {
        VStack{
            Form{
                ForEach(0..<details.count){ num in
                    if details[num].date == todayDate{// Simple Filter
                        Section(header: Text("\(house)'s Breakfast")){
                            Text("Location: \(details[num].brLocation)")
                            Text("Time: \(details[num].brTime)")
                            Text("Date: \(details[num].date)")
                        }
                        Section(header: Text("\(house)'s Lunch")){
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


