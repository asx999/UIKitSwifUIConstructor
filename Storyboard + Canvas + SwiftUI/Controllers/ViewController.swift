//
//  ViewController.swift
//  Storyboard + SwiftUI
//
//  Created by Александр on 25.01.2023.
//

import UIKit//___библиотека дает возможность использовать UIKit
import SwiftUI//___библиотека дает возможность визуализации через Canvas но при этом писать на UIKit если не отображается Canvas включить на панели

class ViewController: UIViewController {

    private let postTitle = Post(title: "PostStrucTitle")//передает title из внешнего файла

    //___активация Label из Storyboard с помощью Storyboard
    @IBOutlet weak var labelStoryboard: UILabel!
    //___метод загружающий сцену
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()//___вызываемый метод определяющий положение объектов на экране ViewController
        // assignbackground()//___вызываемый метод добавляющий изображение как фон
    }

    //___метод для кнопки с названием buttomPushStorubord из Storyboard привязан через Storyboard
    @IBAction func buttomPushStorubord(_ sender: Any) {//___назвиние метода синтаксис
        //___метод № 1 push перехода от UIKit к SwiftUI реализация через Storyboard
        let host = UIHostingController(rootView: SwiftUIView())
        navigationController?.pushViewController(host, animated: true)
    }
    //___метод для кнопки с названием segueToSwiftUI из Storyboard привязан через Storyboard
    @IBSegueAction func segueToSwiftUI(_ coder: NSCoder) -> UIViewController? {
        //___метод № 2 segue перехода от UIKit к SwiftUI реализация через Storyboard
        return UIHostingController(coder: coder, rootView: SwiftUIView())
    }

    let backgroundImageView: UIImageView = { // настройка изображения рядом с лого
        var imageView = UIImageView()
        imageView.image = UIImage(named: "background")//___название изображения из добавленных в Assets
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill//___заполняет по экрану
        imageView.clipsToBounds = true//___обрезает картинке края которые выходят за приделы view.bounds
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()


    lazy var helloLabel: UILabel = {//___верхний Label "Програмный Label шрифт системный" с момощью кода,создание замыкания
        let label = UILabel()//___создание Label
        label.text = "Програмный Label шрифт системный"//___текст Label
        label.textColor = .white//___цвет Label
        label.font = .systemFont(ofSize: 20, weight: .semibold)//___размер системного шрифта,название системного шрифта
        return label//___замыкание возвращает сам Label
    }()

    lazy var eshoLabel: UILabel = {//___верхний Label "Прог Label шрифт кастомный" с момощью кода,создание замыкания
        let label = UILabel()//___создание Label
        label.text = "Прог Label шрифт кастомный"//___текст Label
        label.textColor = .white//___цвет Label
        label.font = UIFont(name: "Avenir Next Bold", size: 20)//___название кастомного шрифта ,размер шрифта
        return label//___замыкание возвращает сам Label
    }()

    lazy var regButton: UIButton = { // настройка и создание кнопки минус
        let button = UIButton(type: .system)//__указатель на то что кнопка системная
        button.setTitle("Регистрация", for: .normal)//__сам Labl и его состояние
        button.tintColor = .white//__цвет шрифта
        button.backgroundColor = #colorLiteral(red: 0.639077723, green: 0.2492567599, blue: 0.6254395843, alpha: 1)//___установка цвета хекс команда "#colorLiteral шифт (" менять по двойному клику
        button.titleLabel?.font = UIFont(name: "Avenir Next Bold", size: 24)//__кастомный шрифт
        button.layer.cornerRadius = 10//__закругление кнопки
        button.addTarget(self, action: #selector(regButtonTapped), for: .touchUpInside)//___таргет для нажатия на кнопку програмный
        return button
    }()
    //__переход к tabBarController
    lazy var mainViewControllerButton: UIButton = {
        let button = UIButton(type: .system)//__указатель на то что кнопка системная
        button.setTitle("К TabBarController", for: .normal)//__сам Labl и его состояние
        button.tintColor = .white//__цвет шрифта
        button.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)//___установка цвета хекс команда "#colorLiteral шифт (" менять по двойному клику
        button.titleLabel?.font = UIFont(name: "Avenir Next Bold", size: 24)//__кастомный шрифт
        button.layer.cornerRadius = 10//__закругление кнопки
        button.addTarget(self, action: #selector(mainViewControllerButtonTapped), for: .touchUpInside)//___таргет для нажатия на кнопку програмный
        return button
    }()

    //__метод нажатия на кнопку регистрации
    @objc func regButtonTapped() {//___назвиние метода синтаксис
        print("regButton")//___выводит в консоль принт что нажата кнопка
    }

    //__метод нажатия на кнопку TabBarControllerButton
    @objc func mainViewControllerButtonTapped() {//___назвиние метода синтаксис
        let postVC = MainViewController()
        postVC.title = postTitle.title
        navigationController?.pushViewController(postVC, animated: true)
    }

    //___положение объектов на экране № 1 ViewController
    private func setupConstraints() {//___назвиние метода синтаксис
        view.addSubview(helloLabel)//___добавление объекта на родительский View
        helloLabel.translatesAutoresizingMaskIntoConstraints = false//___отключение автоматического позиционирования объекта
        view.addSubview(mainViewControllerButton)
        mainViewControllerButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(eshoLabel)//___добавление объекта на родительский View
        eshoLabel.translatesAutoresizingMaskIntoConstraints = false//___отключение автоматического позиционирования объекта
        view.addSubview(regButton)//___добавление объекта на родительский View
        regButton.translatesAutoresizingMaskIntoConstraints = false//___отключение автоматического позиционирования объекта
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        view.addSubview(oneCustomView)
        oneCustomView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([//___создает массив позволяющий позиционировать объекты.Можно без него, тогда в функции прописываем положение например "helloLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor.isActive = true)"
            //___.isActive = true обязательно в конце каждого положения или строки положения

            helloLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),//___отступ от низа "safeAreaLayoutGuide" 4 pt
            helloLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),//___привязка к центру по оси Х

            eshoLabel.topAnchor.constraint(equalTo: helloLabel.topAnchor, constant: 20),//___отступ от "Програмный Label шрифт системный" от низа 4 pt
            eshoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),//___привязка к центру по оси Х

            regButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 700),//___отступ от низа "safeAreaLayoutGuide" 700 pt
            regButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),//___привязка к центру по оси Х
            regButton.widthAnchor.constraint(equalToConstant: 250),//___длинна кнопки
            regButton.heightAnchor.constraint(equalToConstant: 48),//___ширина кнопки

            backgroundImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),//___отступ от низа "safeAreaLayoutGuide" 4 pt
            backgroundImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),//___привязка к центру по оси Х
            backgroundImageView.widthAnchor.constraint(equalToConstant: 600),//___длинна кнопки
            backgroundImageView.heightAnchor.constraint(equalToConstant: 930),

            mainViewControllerButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 650),//___отступ от "safeAreaLayoutGuide" 700 pt
            mainViewControllerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),//___привязка к центру по оси Х
            mainViewControllerButton.widthAnchor.constraint(equalToConstant: 250),//___длинна кнопки
            mainViewControllerButton.heightAnchor.constraint(equalToConstant: 48),//___ширина кнопки


                                    ])
    } //___end

    let oneCustomView = OneCustomView()
}
//___метот позволяет вызывать canvas во ViewController
struct  ViewControllerProvider: PreviewProvider {

    static var previews: some View {
        ViewController().showPreview()//___подключение перенесенной структуры
    }
}

//__________________________________

//__: ВНИМАНИЕ!!!

//__Если перейти в SceneDelegate и один кд закоментировать а другой раскоментировать , загрузится другой экран.

//__________________________________
//функция загрузки кастомного View/не требует помещения во viewDidLoad
    //    override func loadView() {
    //        view = OneCustomView() //класс где создавалась View
    //        //self.view = CustomImageView()
    //        print(#function)
    //    }
//__________________________________
//___метод устанавливает задний фон в виде изображения
//    func assignbackground(){//___назвиние метода синтаксис
//        let background = UIImage(named: "background")//___название изображения из добавленных в Assets
//        var imageView : UIImageView!//___настройка изображения
//        imageView = UIImageView(frame: view.bounds)//___определяет положение в системе координат View
//        imageView.contentMode =  UIView.ContentMode.scaleAspectFill//___заполняет по экрану
//        imageView.clipsToBounds = true//___обрезает картинке края которые выходят за приделы view.bounds
//        imageView.image = background//___установка фона изображения с этим именем let background = UIImage(named: "background")
//        imageView.center = view.center//___центрует изображение
//        view.addSubview(imageView)//___добавляет на родительский View
//        self.view.sendSubviewToBack(imageView)//___устанавливает положение в иерархии View отодвигает на задний план
//        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true//___привязка для autoLayout что бы закрепилась при изменении ориентации устройства по оси Х
//        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true//___привязка для autoLayout что бы закрепилась при изменении ориентации устройства по оси Y
// }//___end










