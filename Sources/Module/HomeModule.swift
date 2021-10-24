//
//  HomeModule.swift
//  miniBanking_home
//
//  Created by Bruno Vieira on 23/10/21.
//

import UIKit

public final class HomeModule {
    
    public static func start(on navigationController: UINavigationController) {
        let storyboard = UIStoryboard(
            name: "Home",
            bundle: Bundle.init(for: self)
        )
        guard let initialViewController = storyboard.instantiateInitialViewController() as? HomeViewController else { exit(0) }
        let businessHandler = HomeViewModel()
        businessHandler.setup(displayer: initialViewController)
        initialViewController.setup(businessHandler: businessHandler)
        navigationController.pushViewController(
            initialViewController,
            animated: true
        )
    }
    
}
