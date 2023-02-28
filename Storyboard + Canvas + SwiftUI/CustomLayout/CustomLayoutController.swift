//
//  CustomLayoutController.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 14.02.2023.
//

import UIKit

final class CustomLayoutController: UIViewController {

    private var portraitLayout = [NSLayoutConstraint]()
    private var landscapeLayout = [NSLayoutConstraint]()

    private var isPortraitOrientation: Bool {
        return UIDevice.current.orientation == .portrait
    }

    //MARK: - SuperView
    private lazy var blueView: UIView = {
        let blueView = UIView()
        blueView.backgroundColor = .blue
        //whiteView.layer.cornerRadius = 14
        blueView.translatesAutoresizingMaskIntoConstraints = false
        return blueView
    }()

    //MARK: - Add Text Field
    private lazy var myTextField: UITextField = {
        let myTextField = UITextField()
        myTextField.backgroundColor = #colorLiteral(red: 0.9561659694, green: 0.9591339231, blue: 0.9530903697, alpha: 1)
        myTextField.textColor = .black
        myTextField.placeholder = "Enter new status"
        myTextField.layer.cornerRadius = 12
        myTextField.font = .systemFont(ofSize: 15, weight: .regular)
        myTextField.textAlignment = .center
        myTextField.layer.borderWidth = 1
        myTextField.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        myTextField.translatesAutoresizingMaskIntoConstraints = false
        //myTextField.addTarget(self, action: #selector(textFieldAction), for: .editingChanged)
        return myTextField
    }()

    //MARK: - Add Waiting Label
    private lazy var statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.text = "Waiting for something"
        statusLabel.textColor = .gray
        statusLabel.font = .systemFont(ofSize: 14, weight: .regular)
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        return statusLabel
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        addLayout()
        view.backgroundColor = .yellow
    }
    
    private func addViews() {
        view.addSubview(blueView)
        view.addSubview(myTextField)
        view.addSubview(statusLabel)
        print(statusLabel.intrinsicContentSize)
        

    }

    private func activatePortrait(){
        NSLayoutConstraint.activate(portraitLayout)
        NSLayoutConstraint.deactivate(landscapeLayout)

    }

    private func activateLandscape(){
        NSLayoutConstraint.deactivate(portraitLayout)
        NSLayoutConstraint.activate(landscapeLayout)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        isPortraitOrientation ? activateLandscape() : activatePortrait()
    }

    private func addLayout() {

        portraitLayout = [
            blueView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            blueView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            blueView.widthAnchor.constraint(equalToConstant: 80),
            blueView.heightAnchor.constraint(equalToConstant: 80)
        ]

        landscapeLayout = [
            blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            blueView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            blueView.widthAnchor.constraint(equalToConstant: 80),
            blueView.heightAnchor.constraint(equalToConstant: 80)
        ]

        NSLayoutConstraint.activate([
            myTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35),
            myTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            myTextField.widthAnchor.constraint(equalToConstant: 120),
            myTextField.heightAnchor.constraint(equalToConstant: 40),

            statusLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            statusLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            statusLabel.widthAnchor.constraint(equalToConstant: statusLabel.intrinsicContentSize.width),

        ])
    }
}









