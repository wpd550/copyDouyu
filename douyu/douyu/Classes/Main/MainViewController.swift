//
//  MainViewController.swift
//  douyu
//
//  Created by dong on 2021/3/25.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createTabBarControllerItem()
    }
}



// MARK: - Init TabBarControlleritem
extension MainViewController{
    func createTabBarControllerItem(){
        
        let names:[String] = ["Home","Follow","FishBar","Entertainment","Profile"]
        
        for name in names {
            addSubControllerWithString(name: name)
        }
    }
    func addSubControllerWithString(name:String) {
        let controller = UIStoryboard(name: name, bundle: nil).instantiateInitialViewController()
        guard controller != nil else {
            print("create bundlename \(name) failed");
            return
        }
        addChild(controller!)
    }
}
