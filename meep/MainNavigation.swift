//
//  MainNavigation.swift
//  Meep
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit
import Foundation
import SlideMenuControllerSwift

class MainNavigation {

    var rootViewController: UIViewController!
    
    lazy var mainController: UIViewController! = {
        return MainMenuViewController()
    }()

	
	init() {
        
        self.rootViewController = mainController
    }
		
}

