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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
