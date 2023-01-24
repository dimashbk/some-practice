//
//  MyCollectionViewCell.swift
//  SomePractice
//
//  Created by Dinmukhamed on 19.01.2023.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    static let identifier = "MyCollectionViewCell"
    var imageView = UIImageView()
    
    var photo: Photo!{
        didSet{
            
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemRed
            }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension MyCollectionViewCell{
    private func initialize(){
        

        imageView.frame = self.contentView.bounds
    }
}
