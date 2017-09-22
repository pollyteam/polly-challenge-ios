//
//  PLYResultsController.swift
//  Polly-Challenge
//
//  Created by Vicc Alexander on 9/22/17.
//  Copyright © 2017 Polly. All rights reserved.
//

import UIKit

class PLYResultsController: UIViewController {

    //-----------------------------------
    // MARK: - Properties
    //-----------------------------------

    var poll: PLYPoll?

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

    //-----------------------------------
    // MARK: - Setup
    //-----------------------------------

    fileprivate func setupUI() {

        // Setup
        view.backgroundColor = .black
    }

    //-----------------------------------
    // MARK: - Memory Management
    //-----------------------------------

    override func didReceiveMemoryWarning() {

        // Super
        super.didReceiveMemoryWarning()
    }
}
