//
//  UIViewController + Extension.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 25.01.2023.
//

import SwiftUI
//___расширение UIViewController дает возможность для просмотра изменений в реальном времени с помощью кода
extension UIViewController {
    private struct Preview: UIViewControllerRepresentable {
        let viewController: UIViewController
        func makeUIViewController(context: Context) -> some UIViewController {
            viewController
        }
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        }
    }//___функция игнорирования области SafeArea во ViewController
        func showPreview() -> some View {
            Preview(viewController: self).edgesIgnoringSafeArea(.all)
    }
}
