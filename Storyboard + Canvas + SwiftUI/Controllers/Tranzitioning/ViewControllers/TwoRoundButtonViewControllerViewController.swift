//
//  TwoRoundButtonViewControllerViewController.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 05.02.2023.
//

import UIKit

final class TwoRoundButtonViewController: UIViewController {
    
    //MARK: - Add RoundButton
    private lazy var tworoundButton: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("GO", for: .normal)
        button.tintColor = .black
        //button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        button.backgroundColor = .white
        
        button.layer.shadowColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1).cgColor
        button.layer.shadowOpacity = 0.7
        button.layer.shadowOffset = CGSizeMake(0.0, 5.0)
        
        button.addTarget(self, action: #selector(twoRoundButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
        view.addSubview(tworoundButton)
    }
    
    //MARK: - ViewWillLayoutSubviews//обновляет Layout
    override func viewWillLayoutSubviews() {
        tworoundButton.layer.cornerRadius = tworoundButton.frame.width / 2
    }
    
    //MARK: - TwoRoundButtonTapped
    @objc private func twoRoundButtonTapped() {
        dismiss(animated: true) // вызываем с ViewController
        navigationController?.popViewController(animated: true) // вызываем с navigationController
    }
    
    //MARK: - Setup Views
    private func setupViews() {
        title = "Two window"
        view.backgroundColor = .orange
        view.addSubview(tworoundButton)
    }
}

//MARK: - Extension TwoRoundButtonViewController
extension TwoRoundButtonViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            tworoundButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            tworoundButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tworoundButton.heightAnchor.constraint(equalToConstant: 60),
            tworoundButton.widthAnchor.constraint(equalToConstant: 60),
            
            
        ])
    }
}
