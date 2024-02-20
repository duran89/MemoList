//
//  NavigationAppearance.swift
//  MemoList
//
//  Created by 권정근 on 2/20/24.
//

import UIKit

extension UINavigationController {
    
    func setupNavigationBar() {
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        
        appearance.backgroundColor = .systemOrange
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.lightText]
        appearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.lightText]
        
        self.navigationBar.standardAppearance = appearance
        self.navigationBar.scrollEdgeAppearance = appearance
        self.navigationBar.compactAppearance = appearance
        
        self.navigationBar.tintColor = .white
    }
}
