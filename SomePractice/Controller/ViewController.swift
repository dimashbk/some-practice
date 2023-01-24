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
    private let url = "https://jsonplaceholder.typicode.com/"
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }


}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as? MyCollectionViewCell{
            itemCell.photo = self.photos[indexPath.item]
            return itemCell
        }

        return UICollectionViewCell()
        }
       
    
    
    private func initialize(){
        

        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        let myCollection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        myCollection.delegate = self
        myCollection.dataSource = self
        myCollection.frame = view.bounds
        view.addSubview(myCollection)
        myCollection.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        
        
        
    }
    
    
}
extension ViewController{
    private func fetchData{
        
    }
}
