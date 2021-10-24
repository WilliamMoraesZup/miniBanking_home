//
//  HomeRouter.swift
//  miniBanking_home
//
//  Created by Bruno Vieira on 23/10/21.
//

import UIKit
import miniBanking_account
import miniBanking_card
import miniBanking_customerService
import miniBanking_pix

struct HomeRouter {
    
    static func routeToAccount(on navigationController: UINavigationController) {
        AccountModule.start(on: navigationController)
    }
    
    static func routeToCard(on navigationController: UINavigationController) {
        CardModule.start(on: navigationController)
    }
    
    static func routeToCustomerService(on navigationController: UINavigationController) {
        CustomerServiceModule.start(on: navigationController)
    }
    
    static func routeToPix(on navigationController: UINavigationController) {
        PixModule.start(on: navigationController)
    }
    
}
