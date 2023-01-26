//
//  MyCollectionViewCell.swift
//  SomePractice
//
//  Created by Dinmukhamed on 19.01.2023.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    var myImageView = UIImageView()
    var photo: Photo! {
        didSet{
            self.myImageView.setImage(imageUrl: self.photo.url)
        }
    }
    
    static let identifier = "MyTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConstraints()
    }
 
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        contentView.addSubview(myImageView)
        
        myImageView.snp.makeConstraints{ maker in
            maker.height.width.equalTo(60)
            maker.top.left.bottom.equalToSuperview().inset(5)
            
        }
    }
    
}
