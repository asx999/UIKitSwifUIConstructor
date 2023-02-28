//
//  Model.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 27.02.2023.
//

import UIKit

struct ImageModel {
    var image: String

    static func makeImage() -> [ImageModel] {
        var image = [ImageModel]()

        image.append(ImageModel(image: "Amber Laura Heard"))
        image.append(ImageModel(image: "Anastasia Alekseevna Terekhova"))
        image.append(ImageModel(image: "Anna Vyalitsyna."))
        image.append(ImageModel(image: "Avril Ramona Lavigne"))
        image.append(ImageModel(image: "Blake Lively"))
        image.append(ImageModel(image: "Cameron Michelle Diaz"))
        image.append(ImageModel(image: "Charlize Theron"))
        image.append(ImageModel(image: "Ekaterina Vilkova"))
        image.append(ImageModel(image: "Emma Charlotte Duerre Watson"))
        image.append(ImageModel(image: "Hayden Lesley Panettiere"))
        image.append(ImageModel(image: "Hilary Erhard Duff"))
        image.append(ImageModel(image: "Irina Shayk"))
        image.append(ImageModel(image: "Isabella Khairiah Hadid"))
        image.append(ImageModel(image: "Jennifer Lynn Affleck"))
        image.append(ImageModel(image: "Karina Razumovskaya"))
        image.append(ImageModel(image: "Kimberley Alexis Bledel"))
        image.append(ImageModel(image: "Kimberly Noel Kardashian"))
        image.append(ImageModel(image: "Kristen Jaymes Stewart"))
        image.append(ImageModel(image: "Ksenia Sukhinova"))
        image.append(ImageModel(image: "Linda Evangelista"))
        image.append(ImageModel(image: "Margot Elise Robbie"))
        image.append(ImageModel(image: "Milla Jovovich"))
        image.append(ImageModel(image: "Natalie Portman"))
        image.append(ImageModel(image: "Natalya Vodyanova"))
        image.append(ImageModel(image: "Nathalie Kelley"))
        image.append(ImageModel(image: "Nina Dobrev"))
        image.append(ImageModel(image: "Oksana Fedorova"))
        image.append(ImageModel(image: "Olivia Jane Cockburn"))
        image.append(ImageModel(image: "Paulina Andreeva"))
        image.append(ImageModel(image: "Polina Gagarina"))
        image.append(ImageModel(image: "Robyn Rihanna Fenty"))
        image.append(ImageModel(image: "Sasha Luss"))
        image.append(ImageModel(image: "Taylor Alison Swift"))

        return image
    }
}
