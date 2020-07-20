//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Circuler on 18/7/2563 BE.
//  Copyright © 2563 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var text:[String]
    var answer:[String]
    
    init(text:[String], answer:[String]) {
        self.text = text
        self.answer = answer
    }
}
