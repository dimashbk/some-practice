//
//  MyCollectionViewCell.swift
//  SomePractice
//
//  Created by Dinmukhamed on 19.01.2023.
//

import UIKit

class MyCollectionViewCell: UITableViewCell {
    static let identifier = "MyCollectionViewCell"
    
    
    var photo: Photo!{
        didSet{
            self.imageView!.setImage(imageUrl: self.photo.url)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialize()
    }
 
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension MyCollectionViewCell{
    private func initialize(){
        var imageView = UIImageView()
        self.addSubview(imageView)

        imageView.frame = self.contentView.bounds
            }
}
