//
//  PLYHomeController.swift
//  Polly-Challenge
//
//  Created by Vicc Alexander on 9/22/17.
//  Copyright © 2017 Polly. All rights reserved.
//

import UIKit

class PLYHomeController: UIViewController {

    //-----------------------------------
    // MARK: - View Lifecycle
    //-----------------------------------

    override func viewDidLoad() {

        // Super
        super.viewDidLoad()

        // Setup
        setupUI()
    }

    //-----------------------------------
    // MARK: - Status Bar
    //-----------------------------------

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return UIStatusBarAnimation.slide
    }

    //-----------------------------------
    // MARK: - Setup
    //-----------------------------------

    fileprivate func setupUI() {

        // Setup
        let imageView = UIImageView()
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named: "Home")
        imageView.contentMode = .scaleAspectFill
        imageView.frame = view.bounds
        view.addSubview(imageView)

        // Add tap gesture
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(showResults))
        imageView.addGestureRecognizer(tapRecognizer)
    }

    @objc fileprivate func showResults() {

        // Show results
        let resultsController = PLYResultsController()
        resultsController.poll = poll()
        resultsController.modalTransitionStyle = .crossDissolve
        present(resultsController, animated: true, completion: nil)
    }

    //-----------------------------------
    // MARK: - Helper Functions
    //-----------------------------------

    fileprivate func poll() -> PLYPoll {

        // Define options
        let option1 = PLYOption()
        option1.text = "🤗 bff"
        option1.votesCount = 232

        let option2 = PLYOption()
        option1.text = "😍 crush"
        option1.votesCount = 503

        let option3 = PLYOption()
        option1.text = "😀 just a friend"
        option1.votesCount = 255

        let option4 = PLYOption()
        option1.text = "😈 stranger"
        option1.votesCount = 403

        let poll = PLYPoll()
        poll.backgroundColor = UIColor(red: 142.0/255.0, green: 51.0/255.0, blue: 247.0/255.0, alpha: 1.0)
        poll.createdAt = Date()
        poll.optionsCount = 4
        poll.options = [option1, option2, option3, option4]
        poll.question = "Who am I to you?"
        poll.shareUrl = "https://polly.fun/p/beb5a69541"
        poll.votesCount = 1393

        return poll
    }

    //-----------------------------------
    // MARK: - Memory Management
    //-----------------------------------

    override func didReceiveMemoryWarning() {

        // Super
        super.didReceiveMemoryWarning()
    }
}

