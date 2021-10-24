//
//  HomeViewModel.swift
//  miniBanking_home
//
//  Created by Bruno Vieira on 23/10/21.
//

import Foundation

protocol HomeBusinessHandlerProtocol: AnyObject {

    
    
}

final class HomeViewModel: HomeBusinessHandlerProtocol {
    
    private weak var displayer: HomeDisplayerProtocol?
    
    func setup(displayer: HomeDisplayerProtocol) {
        self.displayer = displayer
    }
    
}
