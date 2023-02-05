//
//  OneCustomView.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 05.02.2023.
//

import UIKit

class OneCustomView: UIView {
let twoCustomView = TwoCustomView()


    let whiteView: UIView = {
        let whiteView = UIView()
        whiteView.backgroundColor = .white
        whiteView.layer.cornerRadius = 14
        whiteView.translatesAutoresizingMaskIntoConstraints = false

        return whiteView
    }()

    let greenView: UIView = {
        let greenView = UIView()
        greenView.backgroundColor = .green
        //greenView.layer.cornerRadius = 14
        greenView.translatesAutoresizingMaskIntoConstraints = false

        return greenView
    }()



    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(whiteView)
        addSubview(greenView)

        conct()
       addSubview(twoCustomView)
    }
      required init?(coder: NSCoder) {
          super.init(coder: coder)
      }

    func conct() {
        NSLayoutConstraint.activate([
            whiteView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 100),
            whiteView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            whiteView.heightAnchor.constraint(equalToConstant: 30),
            whiteView.widthAnchor.constraint(equalToConstant: 30),

            greenView.topAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: 5),
            greenView.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 0),
            greenView.heightAnchor.constraint(equalToConstant: 30),
            greenView.widthAnchor.constraint(equalToConstant: 30),




        ])



    }

}
