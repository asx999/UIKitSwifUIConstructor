//
//  PostViewController.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 05.02.2023.
//

import UIKit

final class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8509803922, green: 0.5803921569, blue: 0.3254901961, alpha: 1)
        barBattonItem()
    }

    //MARK: - Add BarBatton
    private func barBattonItem() {
        lazy var barBatton = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(barItemAction))
        navigationItem.rightBarButtonItem = barBatton
        barBatton.image = .init(systemName: "info.circle.fill")
    }

    //MARK: - BarBatton Action
    @objc private func barItemAction() {
        let infoVC = InfoViewController()
        present(infoVC, animated: true)
    }
}
