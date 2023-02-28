//
//  CilcularTranzition.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 05.02.2023.
//

import UIKit

enum CircularTranzitionMod {
    case present, dismis
}

final class CilcularTranzition: NSObject {
    //создали View
    private var circle = UIView()
    //меняем цвет
    public var circleColor: UIColor = .white
    //анимация длительность
    public var duration = 0.7
    //переход
    public var tranzitionMode: CircularTranzitionMod = .present
    // точка старта анимации

    public var statingPoint = CGPoint.zero {
        didSet {
            circle.center = statingPoint
        }
    }

    //MARK: - определяет как будут двигаться ViewControllers
    private func frameForCircle(size: CGSize, startPoint: CGPoint) -> CGRect {
        let xLenght = fmax(startPoint.x, size.width - startPoint.x)
        let yLenght = fmax(startPoint.y, size.height - startPoint.y)
        //квадратный корень из суммы квадратов
        let offsetVector = sqrt(xLenght * xLenght + yLenght * yLenght) * 2
        let size = CGSize(width: offsetVector, height: offsetVector)

        return CGRect(origin: .zero, size: size)
    }
}

//MARK: - Extension//отвечает за длительность анимации
extension CilcularTranzition: UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        duration
    }

    //MARK: - //определяет логику появления и скрытия ViewControllera
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let containerView = transitionContext.containerView

        //оптион бандинг, если получилось получить эту View
        if tranzitionMode == .present {

            //тут получаем View на которую собираемся переходить
            if let presentedView = transitionContext.view(forKey: .to) {
                let viewCentr = presentedView.center //определяем центр/ будет в центре экрана
                // и определяем размеры всего экрана
                let viewSize = presentedView.frame.size

                circle = UIView()
                //определяем границы окружности
                circle.frame = frameForCircle(size: viewSize, startPoint: statingPoint)
                circle.layer.cornerRadius = circle.frame.width / 2//из кубика делаем круг
                circle.center = statingPoint//определяем центр/в нутри кнопки
                circle.backgroundColor = circleColor//цвет второго ViewControllera
                circle.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)//уменишаем круг до точки
                containerView.addSubview(circle) // добавляем в контейнер
                //работа с увеличением и уменишением View
                presentedView.center = statingPoint//определяем начальную точку/в середине кнопки
                presentedView.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)//опять в точку
                presentedView.alpha = 0//прозрачность в ноль
                containerView.addSubview(presentedView) // в контейнер
                //анимация возвращения / анимация появления
                UIView.animate(withDuration: duration) {
                    self.circle.transform = CGAffineTransform.identity
                    presentedView.transform = CGAffineTransform.identity
                    presentedView.alpha = 1
                    presentedView.center = viewCentr
                } completion: { success in
                    transitionContext.completeTransition(success)
                }
            }
        } else {
            //анимация скрытия
            if let returnedView = transitionContext.view(forKey: .from) {
                let viewSize = returnedView.frame.size

                circle.frame = frameForCircle(size: viewSize, startPoint: statingPoint)
                circle.layer.cornerRadius = circle.frame.width / 2
                circle.center = statingPoint

                if let initialView = transitionContext.view(forKey: .to) {
                    containerView.insertSubview(initialView, belowSubview: circle)
                }

                UIView.animate(withDuration: duration) {
                    self.circle.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
                    returnedView.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
                    returnedView.center = self.statingPoint
                    returnedView.alpha = 0
                } completion: { success in
                    returnedView.removeFromSuperview()
                    self.circle.removeFromSuperview()
                    transitionContext.completeTransition(success)
                }
            }
        }
    }
}
