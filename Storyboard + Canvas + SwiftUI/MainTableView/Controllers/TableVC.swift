//
//  TableVC.swift
//  Storyboard + Canvas + SwiftUI
//
//  Created by Александр on 19.02.2023.
//

import UIKit

class TableVC: UIViewController {

var tableView = UITableView()
    var object: [Object] = []

    struct Cells {
        static let tableViewCell = "TableViewCell"
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Title Images"
        object = fetchData()
        configerTableView()

    }


    func configerTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.pin(to: view)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: Cells.tableViewCell)
    }


    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self

    }


}

extension TableVC: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return object.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.tableViewCell) as! TableViewCell
        let object = object[indexPath.row]
        cell.set(objwct: object)
        return cell
    }
}

extension TableVC {

    func fetchData() -> [Object] {

        let image1 = Object(image: Images.angelina, title: "Angelina Jolie")
        let image2 = Object(image: Images.claire, title: "Claire Lawrence")
        let image3 = Object(image: Images.emily, title: "Emily Stone")
        let image4 = Object(image: Images.jennifer, title: "Jennifer Lopez")
        let image5 = Object(image: Images.jessica, title: "Jessica Marie Alba")
        let image6 = Object(image: Images.kate, title: "Kate Beckinsale")
        let image7 = Object(image: Images.claire, title: "Claire Lawrence")
        let image8 = Object(image: Images.megan, title: "Megan Fox")
        let image9 = Object(image: Images.mila, title: "Mila Kunis")
        let image10 = Object(image: Images.natalie, title: "Natalie Portman")
        let image11 = Object(image: Images.keira, title: "Keira Christina Knightley")
        return [image1, image2, image3, image4, image5, image6, image7, image8, image9, image10, image11]
    }
}

