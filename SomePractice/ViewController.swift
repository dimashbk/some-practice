//
//  ViewController.swift
//  SomePractice
//
//  Created by Dinmukhamed on 19.01.2023.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    
    
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
        let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath)

        return itemCell
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

