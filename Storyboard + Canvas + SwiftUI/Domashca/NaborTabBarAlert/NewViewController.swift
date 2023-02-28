//
//  NewViewController.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 06.02.2023.
//

import UIKit

final class NewViewController: UIViewController {

    private let newTitle = NewTitle()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        title = newTitle.title
        addViews()

    }
    //MARK: - SuperView
    private lazy var whiteView: UIView = {
        let whiteView = UIView()
        whiteView.backgroundColor = .white
        //whiteView.layer.cornerRadius = 14
        return whiteView
    }()
    //MARK: - SubView
    private lazy var redView: UIView = {
        let redView = UIView()
        redView.backgroundColor = .red
        //whiteView.layer.cornerRadius = 14
        return redView
    }()

    //MARK: - SubView
    private lazy var yellowView: UIView = {
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        //whiteView.layer.cornerRadius = 14
        return yellowView
    }()

    //MARK: - SuperView
    private lazy var mainGroupOneView: MainGroupOneView = {
        let mainGroupOneView = MainGroupOneView()
        mainGroupOneView.backgroundColor = .white
        //whiteView.layer.cornerRadius = 14
        return mainGroupOneView
    }()
}

//MARK: - Extension NewViewController addViews
extension NewViewController {

    private func addViews() {
        view.addSubview(whiteView)
        whiteView.addSubview(redView)
        redView.addSubview(yellowView)
        view.addSubview(mainGroupOneView)

    }
}

//MARK: - Extension NewViewController setupLayoutConstraint
extension NewViewController {

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        whiteView.translatesAutoresizingMaskIntoConstraints = false
        redView.translatesAutoresizingMaskIntoConstraints = false
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        mainGroupOneView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([

            whiteView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -0),
            whiteView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            whiteView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            whiteView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -0),

            redView.topAnchor.constraint(equalTo: whiteView.safeAreaLayoutGuide.topAnchor, constant: 0),
            redView.leadingAnchor.constraint(equalTo: whiteView.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            redView.trailingAnchor.constraint(equalTo: whiteView.safeAreaLayoutGuide.trailingAnchor, constant: -0),
            redView.bottomAnchor.constraint(equalTo: whiteView.safeAreaLayoutGuide.bottomAnchor, constant: -0),

            yellowView.topAnchor.constraint(equalTo: redView.topAnchor, constant: 10),
            yellowView.bottomAnchor.constraint(equalTo: redView.bottomAnchor, constant: -10),
            yellowView.leadingAnchor.constraint(equalTo: redView.leadingAnchor, constant: 10),
            yellowView.trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: -10),

            mainGroupOneView.topAnchor.constraint(equalTo: yellowView.topAnchor, constant: 10),
            mainGroupOneView.bottomAnchor.constraint(equalTo: yellowView.bottomAnchor, constant: -10),
            mainGroupOneView.leadingAnchor.constraint(equalTo: yellowView.leadingAnchor, constant: 10),
            mainGroupOneView.trailingAnchor.constraint(equalTo: yellowView.trailingAnchor, constant: -10),
        ])
    }
}
