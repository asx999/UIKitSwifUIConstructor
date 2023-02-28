//
//  Extantion + Constraint.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 19.02.2023.
//

import UIKit

extension UIView {
    func pin (to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
    }
}
