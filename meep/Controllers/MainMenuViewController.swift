//
//  MainMenuViewController.swift
//  Meep
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class MainMenuViewController: SimpleTabBarController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
		view.backgroundColor = Style.sharedInstance.backgroundColor
		
		let tab1 = MenuViewController()
		tab1.tabBarItem = UITabBarItem(title: "Menu", image: UIImage(named: "DefaultMenuIcon.png"), tag: 0)
 
		let tab2 = StuffViewController()
		tab2.tabBarItem = UITabBarItem(title: "stuff", image: UIImage(named: "DefaultMenuIcon.png"), tag: 1)
 

		viewControllers = [
            UINavigationController(rootViewController: tab1),
            UINavigationController(rootViewController: tab2),
        
		]
		
        
    }
}

