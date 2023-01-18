//
//  ViewController.swift
//  SomePractice
//
//  Created by Dinmukhamed on 19.01.2023.
//

import UIKit

class ViewController: UIViewController {
    let myCollection = UICollectionView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }


}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? MyCollectionViewCell {
            return itemCell
        }
        return UICollectionViewCell()
    }
    
    
    private func initialize(){
        
        myCollection.delegate = self
        myCollection.dataSource = self
        view.addSubview(myCollection)
        
        
    }
    
    
}

