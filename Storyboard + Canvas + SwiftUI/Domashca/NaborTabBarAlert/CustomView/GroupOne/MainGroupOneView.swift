//
//  MainGroupOneView.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 08.02.2023.
//

import UIKit

final class MainGroupOneView: UIView {

    private lazy var oneGroupOneView: UIView = {
        let oneGroupOneView = UIView()
        oneGroupOneView.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        oneGroupOneView.translatesAutoresizingMaskIntoConstraints = false
        return oneGroupOneView
    }()

    private lazy var twoGroupOneView: UIView = {
        let twoGroupOneView = UIView()
        twoGroupOneView.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        twoGroupOneView.translatesAutoresizingMaskIntoConstraints = false
        return twoGroupOneView
    }()

    private lazy var threeGroupOneView: UIView = {
        let threeGroupOneView = UIView()
        threeGroupOneView.backgroundColor = #colorLiteral(red: 0.9383859634, green: 0.5191010833, blue: 0.001925223973, alpha: 1)
        threeGroupOneView.translatesAutoresizingMaskIntoConstraints = false
        return threeGroupOneView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupGroupOneView()
        myLayoutSubviews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    func setupGroupOneView() {
         addSubview(oneGroupOneView)
        addSubview(twoGroupOneView)
        addSubview(threeGroupOneView)

    }

    func myLayoutSubviews() {
       translatesAutoresizingMaskIntoConstraints = false


        NSLayoutConstraint.activate([

            oneGroupOneView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            oneGroupOneView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            oneGroupOneView.widthAnchor.constraint(equalToConstant: 43),
            oneGroupOneView.heightAnchor.constraint(equalToConstant: 60),

            twoGroupOneView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            twoGroupOneView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            twoGroupOneView.widthAnchor.constraint(equalToConstant: 50),
            twoGroupOneView.heightAnchor.constraint(equalToConstant: 60),

            threeGroupOneView.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            threeGroupOneView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            threeGroupOneView.widthAnchor.constraint(equalToConstant: 50),
            threeGroupOneView.heightAnchor.constraint(equalToConstant: 80),



        ])
    }




}
