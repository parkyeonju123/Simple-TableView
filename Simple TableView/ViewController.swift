//
//  ViewController.swift
//  Simple TableView
//
//  Created by D7703_04 on 2018. 5. 3..
//  Copyright © 2018년 D7703_04. All rights reserved.
// ? 나봉..?

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    var animals = ["cat", "tiger", "lion", "monkey", "cow"]
    var country = ["korea","china","africa","japan","aus"]
    var image = ["1.png","2.png","3.png","4.png","5.png"]

    @IBOutlet weak var mytableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       //delegate와 Viewcontroller의 연결
        mytableview.delegate = self
        mytableview.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cell의 재사용
        let identifier = "RE"
        // cell을 하나 메모리 할당하고 재사용을 위해 저장("RE")
        let cell = mytableview.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        // 배열에 있는 데이터를 cell에 넣기
        cell.textLabel?.text = animals[indexPath.row]
        cell.detailTextLabel?.text = country[indexPath.row]
        
        //image 넣기
        let myimage = UIImage(named: image[indexPath.row])
        cell.imageView?.image = myimage
    
        return cell
    

}
}
