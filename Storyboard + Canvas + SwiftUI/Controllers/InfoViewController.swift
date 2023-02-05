//
//  InfoViewController.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 05.02.2023.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.4862745098, green: 0.4117647059, blue: 0.5019607843, alpha: 1)
        addViews()
        layout()
    }

    //MARK: - Add AlertButton// кнопка с настройками
    private lazy var postButton: CradientButton = {
        var button = CradientButton(frame: CGRectMake(0, 0, 200, 40))
        button.setTitle("Go to alert", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        button.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        button.layer.cornerRadius = 16
        //настройка тени под кнопкой
        button.layer.shadowColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1).cgColor
        button.layer.shadowOpacity = 0.7
        button.layer.shadowOffset = CGSizeMake(0.0, 5.0)
        //        button.layer.shadowColor = #colorLiteral(red: 0.06751732528, green: 0.3820462525, blue: 0.8429115415, alpha: 1).cgColor
        //        button.layer.shadowOpacity = 1
        //        button.layer.shadowRadius = 10
        //        //button.layer.shadowOffset = .zero
        //        button.layer.shadowOffset = CGSizeMake(0.0, 5.0)

        button.addTarget(self, action: #selector(actionPostButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    //MARK: - Action AlertButton //действие по кнопке//вызывает всплывающее окно
    @objc private func actionPostButton() {
//создание alertController
        let alertController = UIAlertController(title: "Уже уходите?", message: "Вы точно хотите выйти?", preferredStyle: .alert)
//добавление кнопки Выйти к alertController
        let outAction = UIAlertAction(title: "Выйти", style: .default, handler: { _ in
            self.dismiss(animated: true) //закрывает окно
        } )
        //добавление кнопки Отмена к alertController
        let cancelAction = UIAlertAction(title: "Отмена", style: .destructive) { _ in
            print("Нажал отмена")
        }
//добавлкние кнопок к alertController
        alertController.addAction(cancelAction)
        alertController.addAction(outAction)
//презентует alertController
        present(alertController, animated: true) {
            print("Alert показывается")
        }
    }

    //MARK: - Add Views//добавляет кнопку на View InfoViewControllera
    private func addViews() {
        view.addSubview(postButton)
    }

    //MARK: - Add Constraint//установка Constraint или расположение объекта на View
    private func layout() {
        NSLayoutConstraint.activate([

            postButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            postButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300),
            postButton.widthAnchor.constraint(equalToConstant: 200),
            postButton.heightAnchor.constraint(equalToConstant: 40)

        ])
    }
}
