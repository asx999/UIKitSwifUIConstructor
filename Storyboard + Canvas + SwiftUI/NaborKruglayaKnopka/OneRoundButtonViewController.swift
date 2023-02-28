//
//  OneRoundButtonViewController.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 05.02.2023.
//

import UIKit

final class OneRoundButtonViewController: UIViewController {

    private var transition = CilcularTranzition()

    //MARK: - Add RoundButton
    private lazy var roundButton: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("GO", for: .normal)
        button.tintColor = .black
        //button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        button.backgroundColor = .orange

        button.layer.shadowColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1).cgColor
        button.layer.shadowOpacity = 0.7
        button.layer.shadowOffset = CGSizeMake(0.0, 5.0)

        button.addTarget(self, action: #selector(roundButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
        navigationController?.delegate = self
    }
    //MARK: - Layout Update
    override func viewWillLayoutSubviews() {
        roundButton.layer.cornerRadius = roundButton.frame.width / 2
    }
    //MARK: - Action Button
    @objc private func roundButtonTapped() {
        let TwoRoundButtonViewController = TwoRoundButtonViewController()
        TwoRoundButtonViewController.modalPresentationStyle = .custom
        TwoRoundButtonViewController.transitioningDelegate = self
        // вызываем с ViewController
        // present(twoRoundButtonController, animated: true)

        // вызываем с navigationController
        navigationController?.pushViewController(TwoRoundButtonViewController, animated: true)
    }

    //MARK: - SetupViews
    private func setupViews() {
        title = "One window"
        view.backgroundColor = .white
        view.addSubview(roundButton)
    }
}

//MARK: - Extension//настройка призентации для отображения ViewControllera
extension OneRoundButtonViewController: UIViewControllerTransitioningDelegate {


    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {

        transition.tranzitionMode = .present
        transition.statingPoint = roundButton.center
        transition.circleColor = roundButton.backgroundColor!
        return transition

    }

    //MARK: -//скрывает презентацию
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {

        transition.tranzitionMode = .dismis
        transition.statingPoint = roundButton.center
        transition.circleColor = roundButton.backgroundColor!
        return transition
    }
}

//MARK: - Extension NavigationController
extension OneRoundButtonViewController: UINavigationControllerDelegate {

    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.tranzitionMode = operation == .push ? .present : .dismis
        transition.statingPoint = roundButton.center
        transition.circleColor = operation == .pop ? .white : .orange
        return transition
    }
}

//MARK: - Extension Constraints
extension OneRoundButtonViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            roundButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            roundButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            roundButton.heightAnchor.constraint(equalToConstant: 60),
            roundButton.widthAnchor.constraint(equalToConstant: 60),
        ])
    }
}
