//
//  Breakfast.swift
//  LCS-Meal
//
//  Created by Yining Wang on 2021-03-23.
//

import SwiftUI

struct Breakfast: View {
    @State var details:[Menu] = []
    private var todayDate : String{
        let today = Date()
        let formatter1 = DateFormatter()
        formatter1.dateStyle = .short

        return (formatter1.string(from: today))
    }
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Breakfast_Previews: PreviewProvider {
    static var previews: some View {
        Breakfast()
    }
}
