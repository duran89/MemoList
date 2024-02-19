//
//  ViewController.swift
//  MemoList
//
//  Created by 권정근 on 2/19/24.
//

import UIKit

class MainTabbarViewController: UITabBarController{

    override func viewDidLoad() {
        // self.view.backgroundColor = .systemBackground
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: SearchViewController())
        let vc3 = UINavigationController(rootViewController: NotificationViewController())
        let vc4 = UINavigationController(rootViewController: CalendarViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc1.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        vc2.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        
        vc3.tabBarItem.image = UIImage(systemName: "bell")
        vc3.tabBarItem.selectedImage = UIImage(systemName: "bell.fill")
        
        vc4.tabBarItem.image = UIImage(systemName: "calendar")
        
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
        
        self.tabBar.backgroundColor = .systemBackground
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        makeNavigationBarUI()
    }
    
    func makeNavigationBarUI() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()  // 불투명
        
        
        // 네비게이션 바의 배경색을 지정해주기 위해서는 scrollEdgeAppearance도 같이 할 것 
        navigationController?.navigationBar.backgroundColor = .systemBackground
        navigationController?.navigationBar.standardAppearance = appearance
//      navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        title = "To Do List"
    }


}

