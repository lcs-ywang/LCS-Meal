//
//  Menu.swift
//  LCS-Meal
//
//  Created by Yining Wang on 2021-03-24.
//

import Foundation

struct Menu : Codable, Identifiable{
    var id:Int
    var date:String
    var breakfast:String
    var lunch:String
    var dinner:String
    
}
