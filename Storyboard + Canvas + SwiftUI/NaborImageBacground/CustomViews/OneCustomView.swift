//
//  OneCustomView.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 05.02.2023.
//

import UIKit

final class OneCustomView: UIView {

    let twoCustomView = TwoCustomView()
    
     lazy var whiteView: UIView = {
        let whiteView = UIView()
        whiteView.backgroundColor = .white
        whiteView.layer.cornerRadius = 14
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        return whiteView
    }()
    
     lazy var greenView: UIView = {
        let greenView = UIView()
        greenView.backgroundColor = .green
        //greenView.layer.cornerRadius = 14
        greenView.translatesAutoresizingMaskIntoConstraints = false
        return greenView
    }()
    
    lazy var blueView: UIView = {
        let blueView = UIView()
        blueView.backgroundColor = .blue
        //blueView.layer.cornerRadius = 14
        blueView.translatesAutoresizingMaskIntoConstraints = false
        return blueView
    }()
    
    lazy var yellowView: UIView = {
       let yellowView = UIView()
       yellowView.backgroundColor = .yellow
       //yellowView.layer.cornerRadius = 14
       yellowView.translatesAutoresizingMaskIntoConstraints = false
       return yellowView
   }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(whiteView)
        addSubview(greenView)
        addSubview(twoCustomView)
        addSubview(blueView)
        blueView.addSubview(yellowView)
        
        conct()
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
            
            blueView.topAnchor.constraint(equalTo: twoCustomView.redView.bottomAnchor, constant: 5),
            blueView.leadingAnchor.constraint(equalTo: twoCustomView.redView.leadingAnchor, constant: 0),
            blueView.heightAnchor.constraint(equalToConstant: 50),
            blueView.widthAnchor.constraint(equalToConstant: 50),

            yellowView.topAnchor.constraint(equalTo: blueView.topAnchor, constant: 10),
            yellowView.leadingAnchor.constraint(equalTo: blueView.leadingAnchor, constant: 10),
            yellowView.heightAnchor.constraint(equalToConstant: 30),
            yellowView.widthAnchor.constraint(equalToConstant: 30),






        ])
    }
}
