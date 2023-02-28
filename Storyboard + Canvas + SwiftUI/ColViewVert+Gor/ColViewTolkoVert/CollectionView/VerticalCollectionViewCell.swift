//
//  VerticalCollectionViewCell.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 27.02.2023.
//

import UIKit

final class VerticalCollectionViewCell: UICollectionViewCell {


//UIImageView для присвоения imageModel
    private let imagePhoto: UIImageView = {
        let imagePhoto = UIImageView()
        imagePhoto.translatesAutoresizingMaskIntoConstraints = false
        imagePhoto.contentMode = .scaleAspectFill
        imagePhoto.layer.cornerRadius = 8
        imagePhoto.clipsToBounds = true
        return imagePhoto
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Public Methods
    // Функция отвечает за показ фото или присваевает модель созданной вью
    func setupImageModel(_ image: ImageModel) {
        imagePhoto.image = UIImage(named: image.image)
    }

    private func setupLayout() {
        contentView.addSubview(imagePhoto)

        NSLayoutConstraint.activate([
            imagePhoto.topAnchor.constraint(equalTo: contentView.topAnchor),
            imagePhoto.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imagePhoto.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            imagePhoto.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
  
}
