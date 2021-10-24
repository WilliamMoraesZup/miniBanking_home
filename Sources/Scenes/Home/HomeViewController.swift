//
//  HomeViewController.swift
//  miniBanking_home
//
//  Created by Bruno Vieira on 23/10/21.
//

import UIKit
import miniBanking_core

protocol HomeDisplayerProtocol: AnyObject {
    
}

final class HomeViewController: ViewController,
                                HomeDisplayerProtocol {
    
    private var businessHandler: HomeBusinessHandlerProtocol?
    
    
    func setup(businessHandler: HomeBusinessHandlerProtocol) {
        self.businessHandler = businessHandler
    }
    
    @IBAction func didTapAccountButton(_ sender: Any) {
        guard let navigationController = navigationController else { return }
        HomeRouter.routeToAccount(on: navigationController)
    }
    
    @IBAction func didTapCardButton(_ sender: Any) {
        guard let navigationController = navigationController else { return }
        HomeRouter.routeToCard(on: navigationController)
    }
    
    @IBAction func didTapPixButton(_ sender: Any) {
        guard let navigationController = navigationController else { return }
        HomeRouter.routeToPix(on: navigationController)
    }
    
    @IBAction func didTapCustomerServiceButton(_ sender: Any) {
        guard let navigationController = navigationController else { return }
        HomeRouter.routeToCustomerService(on: navigationController)
    }
    
}
