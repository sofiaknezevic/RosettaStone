//
//  MainViewController.swift
//  RosettaStone
//
//  Created by Sofia Knezevic on 2017-09-12.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(foodRatingTableView)
        setConstraints()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: - Helpers
    func setConstraints() {
        foodRatingTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        foodRatingTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        foodRatingTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        foodRatingTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    //MARK: - Lazy Initializers
    lazy var foodRatingTableView:UITableView = {
        let foodRatingTableView = UITableView(frame: .zero, style: .plain)
        foodRatingTableView.delegate = self
        foodRatingTableView.dataSource = self
        foodRatingTableView.register(FoodTableViewCell.self, forCellReuseIdentifier: "foodTableViewCell")
        foodRatingTableView.translatesAutoresizingMaskIntoConstraints = false
        return foodRatingTableView
    }()

}

//MARK: - UITableView Delegate & DataSource
extension MainViewController:UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodTableViewCell", for: indexPath) as! FoodTableViewCell
        return cell
    }
}

extension MainViewController:UITableViewDelegate {
    
}
