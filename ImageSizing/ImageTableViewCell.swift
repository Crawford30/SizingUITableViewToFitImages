//
//  ImageTableViewCell.swift
//  ImageSizing
//
//  Created by JOEL CRAWFORD on 7/6/21.
//  Copyright © 2021 JOEL CRAWFORD. All rights reserved.
//

import UIKit

class ImageViewCell: UITableViewCell {
    
    //=======Creating the Image View(Will be returned inside the main image view =========
    var mainImageView: UIImageView = {
         var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //======Add the image view as subview so that it is brought in the front, otherwise it wont show up=====
        self.addSubview(mainImageView)
        
        //===Set Constraints =====
         mainImageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
         mainImageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
         mainImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
         mainImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
