//
//  TableViewCell.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 19.02.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    var tableImageView = UIImageView()
    var titleLebel     = UILabel()




    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(tableImageView)
        addSubview(titleLebel)

        configerImageView()
        configerTitleLabel()
        setImageConstraints()
        setTitleLabelConstraints()

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func set(objwct: Object) {
        tableImageView.image = objwct.image
        titleLebel.text = objwct.title
    }

    func configerImageView() {
        tableImageView.layer.cornerRadius = 10
        tableImageView.clipsToBounds = true


    }

    func configerTitleLabel() {
        titleLebel.numberOfLines = 0
        titleLebel.adjustsFontSizeToFitWidth = true

    }

    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height

    func setImageConstraints() {
        tableImageView.translatesAutoresizingMaskIntoConstraints                                              = false
        tableImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                               = true
        tableImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive                               = true
        tableImageView.heightAnchor.constraint(equalToConstant: 80).isActive  = true
        tableImageView.widthAnchor.constraint(equalTo: tableImageView.heightAnchor, multiplier: 16/9).isActive = true

    }

    func setTitleLabelConstraints() {
        titleLebel.translatesAutoresizingMaskIntoConstraints                                              = false
        titleLebel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                               = true
        titleLebel.leadingAnchor.constraint(equalTo: tableImageView.trailingAnchor, constant: 20).isActive                               = true
        titleLebel.heightAnchor.constraint(equalToConstant: 80).isActive                                   = true
        titleLebel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true

    }


}
