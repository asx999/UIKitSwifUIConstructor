//
//  VcTwoNonStoryboard.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 26.01.2023.
//

import UIKit

final class MainTabBarController: UITabBarController {
    //передаваемые ViewController которые станут NavigationController
    private var profileNavigationController = ProfileViewController()
    private var feedNavigationController = FeedViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
        setTabBarAppearance()

    }
    //MARK: - Creation VC//создает NavigationController из viewControllers
    private func generateTabBar() {
        viewControllers = [
            createNavController(vc: feedNavigationController, itemName: "Feed", itemImage: "light.ribbon"),
            createNavController(vc: profileNavigationController, itemName: "Profile", itemImage: "person.fill")
        ]
    }
    //MARK: - Settings NC//описывает создаваемый NavigationController из ViewControllers
    private func createNavController(vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage)?.withAlignmentRectInsets(.init(top: 5, left: 0, bottom: 0, right: 0)), tag: 0)
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 0)

        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item

        return navController
    }

    //MARK: - Settings TB//описывает TabBar форму , цвет
    private func setTabBarAppearance() {
        let positionOnX: CGFloat = 10
        let positionOnY: CGFloat = 14
        let width = tabBar.bounds.width - positionOnX * 2
        let height = tabBar.bounds.height + positionOnY * 2
        let roundLayer = CAShapeLayer()
        let bezierPath = UIBezierPath(
            roundedRect: CGRect(
                x: positionOnX,
                y: tabBar.bounds.minY - positionOnY,
                width: width,
                height: height
            ),
            cornerRadius: height / 2
        )

        roundLayer.path = bezierPath.cgPath
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        tabBar.itemWidth = width / 5
        roundLayer.fillColor = UIColor.mainHeavenly.cgColor
        tabBar.tintColor = .tabBarItemAccent
        tabBar.unselectedItemTintColor = .tabBarItemLight
    }
}
