//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Pattanan Prarom on 26/3/2566 BE.
//  Copyright © 2566 BE The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let ans: String
    
    init(q: String, a: String){
        self.text = q
        self.ans = a
    }
}
