//
//  SwiftUIView.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 26.01.2023.
//
//___безопасная передача управления в от UIKit к SwiftUI
import SwiftUI
//___SwiftUI страница которая показывается по клику на кнопка "Push to SwiftUiView" и "Segue to SwiftUIView" созданные в Storiboard использующие разные методы перехода
struct SwiftUIView: View {//___структура сцены
    var body: some View {//___тело исполняемого кода
        Text("SwiftUIView")//___текст "SwiftUIView"
    }
}
//___структура позволяет отображение исполняемого кода в реальном времени через canvas, если выключен включить из панели
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
