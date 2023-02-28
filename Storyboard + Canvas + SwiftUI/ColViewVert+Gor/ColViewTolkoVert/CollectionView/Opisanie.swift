//
//  Opisanie.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 27.02.2023.
//

import Foundation

/*
 Общая инфа:

 ○ numberOfSections(in:) // По-умолчанию 1
 ○ collectionView(_:viewForSupplementaryElementOfKind:at)
 ○ методы для редактирования коллекции

 UICollectionViewDelegate
 Выделение ячеек: collectionView(_:didSelectItemAt:)
 Настройка отображения: collectionView(_:willDisplay:forItemAt:)
 Редактирование: collectionView(_:canEditItemAt:)

 UICollectionViewDelegateFlowLayout

 Размеры ячеек: collectionView(_:layout:sizeForItemAt)

 Отступы:
 ● collectionView(_:layout:insetForSectionAt)

 ● collectionView(_:layout:minimumLineSpacingForSectionAt) между строчками

 ● collectionView(_:layout:minimumInteritemSpacingForSectionAt) между конкретными элементами
 Также доступны все методы UICollectionViewDelegate

 UICollectionViewDelegateFlowLayout
 В качестве delegate для Flow Layout используется
 UICollectionViewDelegateFlowLayout. Все методы опциональные и
 позволяют настраивать размеры ячеек и отступы между ячейками

 Алгоритм создания простой коллекции
 1. Создать объект layout. Для стандартного вида использовать
 UICollectionViewFlowLayout
 2. Создать collectionView
 3. Зарегистрировать ячейку для переиспользования
 register(_:forCellWithReuseIdentifier:)
 4. Назначить dataSource, реализовать обязательные методы
 5. Назначить delegate. Для Flow Layout делегат должен быть
 подписан на протокол UICollectionViewDelegateFlowLayout (не
 UICollectionViewDelegate)
1___
Создам контроллер в нем создаем CollectionView и UICollectionViewFlowLayout/создаем ячейку UICollectionViewCell/
 создаем extention identifier/Регестрируем ячейку прям в теле CollectionView/добавить коллекцию на вью/
 добавляем на вью функцией лайаут/прописываем делегаты viewCollection.dataSource = self
 viewCollection.delegate = self в телеколлекции или в отдельном методе/делаем extension PhotosTableViewCell: UICollectionViewDataSource , реализуем 2 обязательных метода/делаем extension UICollectionViewDelegateFlowLayout/
создаем модель или array с даннымиstruct ImageModel {var image: String static func makeImage() -> [ImageModel] {var image = [ImageModel]()return image}}/прописываем количество ячеек в метод UICollectionViewDataSource numberOfItemsInSection imageModel.count/конфигурируем ячейку override init(frame: CGRect) {
 super.init(frame: frame)
}
required init?(coder: NSCoder) {
 fatalError("init(coder:) has not been implemented")
}

 создаем ячейку в расширении UICollectionViewDataSource метод cellForItemAt
 func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
     return cell
 }
отвечает за настройку ячеек
 func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
определяем ширину
 let width = (collectionView.bounds.width - sideInset * 3) / 4
     return CGSize(width: height, height: height)
 }

 отвечает за отступы

 func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
     return sideInset
 }

 // Метод для определения расстояний со всех сторон
 func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
     UIEdgeInsets(top: sideInset, left: sideInset, bottom: sideInset, right: sideInset)
 }


 // Метод для определения высоты меджу фотографиями
 func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
     return sideInset
 }

1.TutSozdVseColView
2.HorizontalCollectionViewCell / VerticalCollectionViewCell
3.MyCollectionController
4.Model
5.Extension + UIView
















 */
