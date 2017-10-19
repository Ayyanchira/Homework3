//
//  Tag.swift
//  Homework3
//
//  Created by Ayyanchira, Akshay Murari on 10/19/17.
//  Copyright © 2017 Shehab, Mohamed. All rights reserved.
//

import Foundation

class Tag: NSObject {
    var tag:String
    var title:String
    var usage:Int
    
    init(tag: String, title:String, usage:Int) {
        self.tag = tag
        self.title = title
        self.usage = usage
    }
    
}

