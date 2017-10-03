//
//  PLYController.swift
//  polly-challenge
//
//  Created by Vicc Alexander on 10/3/17.
//  Copyright © 2017 Polly Inc. All rights reserved.
//

import UIKit

class PLYController: UIViewController {

    //-----------------------------------
    // MARK: - Properties
    //-----------------------------------

    fileprivate var containerView: UIView!
    fileprivate var navigationView: UIImageView!
    internal var cardView: UIView!

    //-----------------------------------
    // MARK: - Status Bar
    //-----------------------------------

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override var prefersStatusBarHidden: Bool {
        return false
    }

    //-----------------------------------
    // MARK: - View Lifecycle
    //-----------------------------------

    override func viewDidLoad() {

        // Super
        super.viewDidLoad()

        // Setup UI
        setupUI()
    }

    //-----------------------------------
    // MARK: - Setup Views
    //-----------------------------------

    internal func setupUI() {

        // Setup view properties
        view.backgroundColor = UIColor(red: 142.0/255.0, green: 51.0/255.0, blue: 247.0/255.0, alpha: 1.0)

        // Setup subviews
        setupContainerView()
        setupNavigationView()
        setupCardView()
    }

    fileprivate func setupContainerView() {

        // Define view size
        let viewSize = UIScreen.main.bounds

        // Setup
        containerView = UIView()
        containerView.frame = CGRect(x: 8, y: 28, width: viewSize.width - 16, height: viewSize.height - 36)
        containerView.backgroundColor = UIColor(red: 237.0/255.0, green: 241.0/255.0, blue: 242.0/255.0, alpha: 1.0)
        containerView.layer.shadowOffset = CGSize(width: 0, height: 4.0)
        containerView.layer.shadowRadius = 10.0
        containerView.layer.shadowOpacity = 0.20
        containerView.layer.shadowColor = UIColor.black.cgColor
        view.addSubview(containerView)

        //Create mask layer
        let maskLayer = CAShapeLayer()
        maskLayer.path = UIBezierPath(roundedRect: containerView.bounds, byRoundingCorners: [.topLeft, .topRight, .bottomLeft, .bottomRight], cornerRadii: CGSize(width: 12.0, height: 12.0)).cgPath
        containerView.layer.mask = maskLayer
    }

    private func setupNavigationView() {

        // Define view size
        let viewSize = UIScreen.main.bounds

        // Setup
        navigationView = UIImageView()
        navigationView.image = UIImage(named: "FauxBar")
        navigationView.frame = CGRect(x: 0, y: 0, width: viewSize.width - 16, height: 53)
        navigationView.contentMode = .scaleAspectFit
        containerView.addSubview(navigationView)
    }

    private func setupCardView() {

        // Define view size
        let viewSize = UIScreen.main.bounds

        // Setup
        cardView = UIView()
        cardView.backgroundColor = UIColor(red: 237.0/255.0, green: 241.0/255.0, blue: 242.0/255.0, alpha: 1.0)
        cardView.frame = CGRect(x: 0, y: 53, width: viewSize.width - 16, height: viewSize.height - 89)
        containerView.addSubview(cardView)
    }

    //-----------------------------------
    // MARK: - Memory Management
    //-----------------------------------

    override func didReceiveMemoryWarning() {

        // Super
        super.didReceiveMemoryWarning()
    }
}

