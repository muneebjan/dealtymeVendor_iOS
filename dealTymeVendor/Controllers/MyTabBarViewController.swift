//
//  TabBarViewController.swift
//  DealTyme
//
//  Created by Ali Apple on 31/01/2019.
//  Copyright © 2019 Ali Apple. All rights reserved.
//

import UIKit

class MyTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(r:38, g:168, b:52)], for:.selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(r:195, g:197, b:199)], for:.normal)
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        let myDealsViewController = MainViewController()
        myDealsViewController.tabBarItem.title = "My Deals"
        myDealsViewController.tabBarItem.selectedImage = UIImage(named: "fireGreen")?.withRenderingMode(.alwaysOriginal)
        myDealsViewController.tabBarItem.image = UIImage(named: "fireGray")?.withRenderingMode(.alwaysOriginal)

        let redeemDealsViewController = redeemViewController()
        redeemDealsViewController.tabBarItem.title = "Redeem"
        redeemDealsViewController.tabBarItem.selectedImage = UIImage(named: "profileGreen")?.withRenderingMode(.alwaysOriginal)
        redeemDealsViewController.tabBarItem.image = UIImage(named: "profileGray")?.withRenderingMode(.alwaysOriginal)

        let savedDealsViewControllers = savedDealsViewController()
        savedDealsViewControllers.tabBarItem.title = "Saved"
        savedDealsViewControllers.tabBarItem.selectedImage = UIImage(named: "savedGreen")?.withRenderingMode(.alwaysOriginal)
        savedDealsViewControllers.tabBarItem.image = UIImage(named: "savedGray")?.withRenderingMode(.alwaysOriginal)
        
        let accountViewControllers = accountsViewController()
        accountViewControllers.tabBarItem.title = "Account"
        accountViewControllers.tabBarItem.selectedImage = UIImage(named: "profileGreen")?.withRenderingMode(.alwaysOriginal)
        accountViewControllers.tabBarItem.image = UIImage(named: "profileGray")?.withRenderingMode(.alwaysOriginal)

        let viewControllerList = [ myDealsViewController, redeemDealsViewController, savedDealsViewControllers, accountViewControllers ]
        viewControllers = viewControllerList.map { UINavigationController(rootViewController: $0) }
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
