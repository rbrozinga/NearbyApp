//
//  HomeViewController.swift
//  Nearby
//
//  Created by Richard Brozinga on 08/04/25.
//

import Foundation
import UIKit
import MapKit

class HomeViewController: UIViewController {
    private var places: [Place] = []
    private let homeView = HomeView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = homeView
    }
}
