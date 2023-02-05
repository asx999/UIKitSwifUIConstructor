//
//  TwoCustomView.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 05.02.2023.
//

import UIKit

class TwoCustomView: UIView {
    let redView: UIView = {
        let redView = UIView()
        redView.backgroundColor = .red
        //redView.layer.cornerRadius = 14
        redView.translatesAutoresizingMaskIntoConstraints = false

        return redView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(redView)


        conct()

    }
      required init?(coder: NSCoder) {
          super.init(coder: coder)
      }

    func conct() {
        NSLayoutConstraint.activate([
            redView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 170),
            redView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            redView.heightAnchor.constraint(equalToConstant: 40),
            redView.widthAnchor.constraint(equalToConstant: 40),

//            greenView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 5),
//            greenView.leadingAnchor.constraint(equalTo: redView.leadingAnchor, constant: 0),
//            greenView.heightAnchor.constraint(equalToConstant: 30),
//            greenView.widthAnchor.constraint(equalToConstant: 30),




        ])



    }

}
