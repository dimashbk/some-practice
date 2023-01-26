//
//  ViewController.swift
//  SomePractice
//
//  Created by Dinmukhamed on 19.01.2023.
//

import UIKit
import SnapKit
import Alamofire
class ViewController: UIViewController {
    private var photos: [Photo] = []
//    var myCollection = UICollectionView(frame: .zero,collectionViewLayout: UICollectionViewFlowLayout())
    var myTableView = UITableView()
    private let url = "https://jsonplaceholder.typicode.com/photos"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(MyTableViewCell.self, forCellReuseIdentifier: MyTableViewCell.identifier)
        myTableView.frame = view.bounds
        view.addSubview(myTableView)
        setConstraints()
        
    }
    
    private func setConstraints() {
        myTableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    private func fetchData(){
        AF.request(self.url , method: .get).responseDecodable(of: [Photo].self){ [weak self](response) in
            self?.photos = response.value ?? []
            
        }
    }


}

//extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource{
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return photos.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        if let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as? MyCollectionViewCell{
//            itemCell.photo = self.photos[indexPath.row]
//            return itemCell
//        }
//
//        return UICollectionViewCell()
//        }
//
//
//
//    private func initialize(){
//
//
//        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .vertical
//
//        myCollection = UICollectionView(frame: .zero, collectionViewLayout: layout)
//        myCollection.delegate = self
//        myCollection.dataSource = self
//        myCollection.frame = view.bounds
//        view.addSubview(myCollection)
//        myCollection.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
//
//
//
//    }
//
//
//}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let itemCell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as? MyTableViewCell{
                    itemCell.photo = self.photos[indexPath.row]
                    return itemCell
        }
        
        return UITableViewCell()
    }
}
    
    
    

