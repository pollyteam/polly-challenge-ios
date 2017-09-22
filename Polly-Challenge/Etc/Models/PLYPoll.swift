//
//  PLYPoll.swift
//  Polly-Challenge
//
//  Created by Vicc Alexander on 9/22/17.
//  Copyright © 2017 Polly. All rights reserved.
//

import UIKit

class PLYPoll: NSObject {

    //-----------------------------------
    // MARK: - Properties
    //-----------------------------------

    var backgroundColor: UIColor?
    var createdAt: Date!
    var optionsCount: Int = 0
    var options: [PLYOption] = []
    var question: String?
    var shareUrl: String?
    var votesCount: Int = 0

    //-----------------------------------
    // MARK: - Helper Functions
    //-----------------------------------

    func emojiBadge() -> String? {

        switch votesCount {
        case 0: return ""
        case 1 : return "😗"
        case 2..<10: return "😃"
        case 10..<100: return "😎"
        case 100..<1000: return "😍"
        case 1000..<10000: return "👌"
        case 10000..<20000: return "🙌"
        case 20000..<30000: return "🔥"
        case 30000..<40000: return "✨"
        case 40000..<50000: return "🌞"
        case 50000..<1000000: return "🚀"
        default: return "🦄"
        }
    }
}
