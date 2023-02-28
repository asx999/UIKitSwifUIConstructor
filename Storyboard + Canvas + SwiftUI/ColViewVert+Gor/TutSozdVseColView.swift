//
//  TutSozdVseColView.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 28.02.2023.
//

import UIKit

extension UIViewController {

    //создание колекций вертикальных или горизонтальных
    func makeCollectionView(scrolDirection: UICollectionView.ScrollDirection) -> UICollectionView {
        //отдельная сущьность принимающая scrolDirection положение на экране вертикальное или горизонтальное
        let layoutCollection = UICollectionViewFlowLayout()
        layoutCollection.scrollDirection = scrolDirection

        let collectionView = UICollectionView(frame: .zero ,collectionViewLayout: layoutCollection)
        collectionView.translatesAutoresizingMaskIntoConstraints = false

        //присваеваем ячейку
        collectionView.register(HorizontalCollectionViewCell.self, forCellWithReuseIdentifier: HorizontalCollectionViewCell.identifier)

        //присваеваем ячейку
        collectionView.register(VerticalCollectionViewCell.self, forCellWithReuseIdentifier: VerticalCollectionViewCell.identifier)
        return collectionView

    }
}
