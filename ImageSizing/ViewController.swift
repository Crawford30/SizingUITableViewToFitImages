//
//  ViewController.swift
//  ImageSizing
//
//  Created by JOEL CRAWFORD on 7/6/21.
//  Copyright © 2021 JOEL CRAWFORD. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    //#imageLiteral(resourceName: "image1")
    //#imageLiteral(resourceName: "image2")
    //#imageLiteral(resourceName: "image3")
    //#imageLiteral(resourceName: "image4")
    //#imageLiteral(resourceName: "image5")
    //#imageLiteral(resourceName: "image6")
    //#imageLiteral(resourceName: "image7")
    //#imageLiteral(resourceName: "image8")
    //#imageLiteral(resourceName: "image9")
    //#imageLiteral(resourceName: "image10")
    
    
    var images =  [#imageLiteral(resourceName: "image1"),#imageLiteral(resourceName: "image2"),#imageLiteral(resourceName: "image3"),#imageLiteral(resourceName: "image4"),#imageLiteral(resourceName: "image5"),#imageLiteral(resourceName: "image6"),#imageLiteral(resourceName: "image7"),#imageLiteral(resourceName: "image8"),#imageLiteral(resourceName: "image9"),#imageLiteral(resourceName: "image10")]
        
        //[image1, image2,image3,image4,image5,image6,image7,image8,image9,image10]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //======Register the table view cell
        self.tableView.register(ImageViewCell.self, forCellReuseIdentifier: "imageViewCell")
        
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageViewCell") as! ImageViewCell
        
        cell.mainImageView.image = images[indexPath.row]

        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let currentImage = images[indexPath.row]
        let imageCropped = currentImage.getCropRation()
        return tableView.frame.width / imageCropped //if you worked for the HeightRatio,, you would multiply here
        
        
        
       
        

    }
    
    


}


//======To get the crop ration
extension UIImage{
    func getCropRation() -> CGFloat {
        let widthRatio = CGFloat(self.size.width / self.size.height)
        return widthRatio
        
    }
    
}



