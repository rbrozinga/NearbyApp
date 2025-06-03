//
//  NearbyFlowController.swift
//  Nearby
//
//  Created by Richard Brozinga on 03/04/25.
//

import Foundation
import UIKit

class NearbyFlowController {
    private var navidationController: UINavigationController?
    
    public init(){
        
    }

    
    func start() -> UINavigationController? {
        let contentView = SplashView()
//        let startViewController = SplashViewController(contentView: contentView, delegate: self)
        let startViewController = HomeViewController()
        self.navidationController = UINavigationController(rootViewController: startViewController)
        
        return navidationController
        
    }
}

extension NearbyFlowController: SplashFlowDelegate {
    func decideNavigationFlow() {
        let contenteView = WelcomeView()
        let welcomeViewController = WelcomeViewController(contentView: contenteView)
        navidationController?.pushViewController(welcomeViewController, animated: true)
        
    }
}
