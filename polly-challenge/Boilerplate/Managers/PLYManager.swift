//
//  PLYManager.swift
//  polly-challenge
//
//  Created by Vicc Alexander on 10/3/17.
//  Copyright © 2017 Polly Inc. All rights reserved.
//

import UIKit

class PLYManager: NSObject {

    //--------------------------------------
    // MARK: - Singleton
    //--------------------------------------

    static let shared = PLYManager()

    //-----------------------------------
    // MARK: - Helper Functions
    //-----------------------------------

    func quickAdds() -> [PLYUser] {

        // Create array of quick adds
        var allAdds: [PLYUser] = []
        var quickAdds: [PLYUser] = []

        // Users
        let user1 = PLYUser()
        user1.firstName = "Eliza"
        user1.lastName = "Thornberry"
        user1.avatar = UIImage(named: "Eliza")

        let user2 = PLYUser()
        user2.firstName = "Bianca"
        user2.lastName = "Woods"
        user2.avatar = UIImage(named: "Bianca")

        let user3 = PLYUser()
        user3.firstName = "Johnny"
        user3.lastName = "Thompson"
        user3.avatar = UIImage(named: "Johnny")

        let user4 = PLYUser()
        user4.firstName = "Amy"
        user4.lastName = "Rogers"
        user4.avatar = UIImage(named: "Amy")

        let user5 = PLYUser()
        user5.firstName = "Sandy"
        user5.lastName = "Yoo"
        user5.avatar = UIImage(named: "Sandy")

        // Generate a random number of quick adds
        allAdds = [user1, user2, user3, user4, user5]
        let randomNumber = Int(arc4random_uniform(UInt32(5)))
        for (index, user) in allAdds.enumerated() {
            if index < randomNumber {
                quickAdds.append(user)
            }
        }

        // Return quick adds
        quickAdds.shuffle()
        return quickAdds
    }

    func invites() -> [PLYUser] {

        // Create array of quick adds
        var allInvites: [PLYUser] = []
        var quickInvites: [PLYUser] = []

        // Users
        let user1 = PLYUser()
        user1.firstName = "Sam"
        user1.lastName = "Butler"
        user1.avatar = UIImage(named: "Sam")
        user1.phoneNumber = "(213) 398-3932"

        let user2 = PLYUser()
        user2.firstName = "Annie"
        user2.lastName = "Brie"
        user2.avatar = UIImage(named: "Annie")
        user2.phoneNumber = "(213) 392-3900"

        let user3 = PLYUser()
        user3.firstName = "Johnny"
        user3.lastName = "Thompson"
        user3.avatar = UIImage(named: "Johnny")
        user3.phoneNumber = "(415) 298-2938"

        let user4 = PLYUser()
        user4.firstName = "Danny"
        user4.lastName = "Bravo"
        user4.avatar = UIImage(named: "Danny")
        user4.phoneNumber = "(212) 938-2098"

        let user5 = PLYUser()
        user5.firstName = "Kiara"
        user5.lastName = "Rodriguez"
        user5.phoneNumber = "(213) 398-3932"
        user5.avatar = UIImage(named: "Kiara")

        // Generate a random number of quick invites
        allInvites = [user1, user2, user3, user4, user5]
        let randomNumber = Int(arc4random_uniform(UInt32(5)))
        for (index, user) in allInvites.enumerated() {
            if index < randomNumber {
                quickInvites.append(user)
            }
        }

        // Return quick invites
        quickInvites.shuffle()
        return quickInvites
    }
}

extension MutableCollection {
    /// Shuffles the contents of this collection.
    mutating func shuffle() {
        let c = count
        guard c > 1 else { return }

        for (firstUnshuffled, unshuffledCount) in zip(indices, stride(from: c, to: 1, by: -1)) {
            let d: IndexDistance = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            let i = index(firstUnshuffled, offsetBy: d)
            swapAt(firstUnshuffled, i)
        }
    }
}

