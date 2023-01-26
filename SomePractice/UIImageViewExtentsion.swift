//
//  UIImageViewExtentsion.swift
//  SomePractice
//
//  Created by Dinmukhamed on 25.01.2023.
//

import Foundation
import UIKit
import Kingfisher

extension UIImageView{
    func setImage(imageUrl: String){
        self.kf.setImage(with: URL(string: imageUrl))
        
    }
    
}
