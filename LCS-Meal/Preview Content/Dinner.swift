//
//  Dinner.swift
//  LCS-Meal
//
//  Created by Yining Wang on 2021-03-23.
//

import SwiftUI

struct Dinner: View {
    @State var details = ApiData2()
    
    private var todayDate : String{
        let today = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .short

        return (formatter.string(from: today))
    }
    
    
    
    var body: some View {
        VStack{
            Form{
                ForEach(0..<details.getData.count){ num in
                    if details.getData[num].date == todayDate{
                        Section(header: Text(" Breakfast")){
                            Text("Menu: \(details.getData[num].breakfast)")
                            
                        }
                    }
                    
                }
            }
        }
    }
}

struct Dinner_Previews: PreviewProvider {
    static var previews: some View {
        Dinner()
    }
}
