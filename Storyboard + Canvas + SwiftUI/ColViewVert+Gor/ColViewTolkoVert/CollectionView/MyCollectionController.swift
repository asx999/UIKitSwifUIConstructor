//
//  MyCollectionController.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 27.02.2023.
//

import UIKit

final class MyCollectionController: UIViewController {

    private let imageModel = ImageModel.makeImage()

    // Создаю UICollectionView
    private lazy var horizontalCollectionView = makeCollectionView(scrolDirection: .horizontal)
    private lazy var verticalCollectionView = makeCollectionView(scrolDirection: .vertical)





    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegateSelf()
        setupLayout()
    }

    func setupDelegateSelf() {
        verticalCollectionView.dataSource = self
        verticalCollectionView.delegate = self
        horizontalCollectionView.dataSource = self
        horizontalCollectionView.delegate = self


    }



    private func setupLayout() {
        view.addSubview(horizontalCollectionView)
        view.addSubview(verticalCollectionView)

        NSLayoutConstraint.activate([

            horizontalCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            horizontalCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            horizontalCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            horizontalCollectionView.heightAnchor.constraint(equalToConstant: view.frame.height / 6),
        ])

        NSLayoutConstraint.activate([

            verticalCollectionView.topAnchor.constraint(equalTo: horizontalCollectionView.bottomAnchor),
            verticalCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            verticalCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            verticalCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)


        ])
    }
}

extension MyCollectionController: UICollectionViewDataSource {


    // отвечает за количество секций
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        //что бы отличать с какой работаем делаем свитч
        switch collectionView {
            //если verticalCollectionView то return imageModel.count
        case horizontalCollectionView:
            return imageModel.count

        case verticalCollectionView:
            return imageModel.count

        default: return 1
        }
    }

    // отвечает за количество ячеек обязательный
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //что бы отличать с какой работаем делаем свитч
        switch collectionView {
            //если verticalCollectionView то return imageModel.count
        case horizontalCollectionView:
            return imageModel.count

        case verticalCollectionView:
            return imageModel.count

        default: return 0
        }
    }

    // отвечает за размещение ячейки настройка
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //что бы отличать с какой работаем делаем свитч
        switch collectionView {
        case horizontalCollectionView: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HorizontalCollectionViewCell.identifier, for: indexPath) as! HorizontalCollectionViewCell
            let imageModel = imageModel[indexPath.item]
            cell.setupImageModel(imageModel)
            return cell

        case verticalCollectionView: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VerticalCollectionViewCell.identifier, for: indexPath) as! VerticalCollectionViewCell
            let imageModel = imageModel[indexPath.item]
            cell.setupImageModel(imageModel)
            return cell
        default: return UICollectionViewCell()


        }
    }
}


// отвечает за настройку Layout
extension MyCollectionController: UICollectionViewDelegateFlowLayout {
    private var sideInset: CGFloat { return 8 }
    private var elementCount: CGFloat {return 3}
    private var insetCount: CGFloat {elementCount + 1}

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case horizontalCollectionView: let height = (collectionView.bounds.width - sideInset * insetCount) / elementCount
            return CGSize(width: height, height: height)

        case verticalCollectionView: let width = (collectionView.bounds.width - sideInset * insetCount) / elementCount
            return CGSize(width: width, height: width)

        default: return .zero
        }
    }

    // Метод для определения высоты меджу фотографиями
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sideInset
    }

    // Метод для определения расстояний со всех сторон
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: sideInset, left: sideInset, bottom: sideInset, right: sideInset)
    }
    //отвечает за примыкание секции
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return sideInset
    }
}


