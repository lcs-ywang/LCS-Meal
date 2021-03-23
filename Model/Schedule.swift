//
//  Schedule.swift
//  LCS-Meal
//
//  Created by Yining Wang on 2021-03-23.
//

import Foundation

struct DineDetail : Codable, Identifiable{
    var id:Int
    var house:String
    var date:String
    var brLocation:String
    var brTime:String
    var luLocation:String
    var luTime:String
    var diLocation:String
    var diTime:String
}
