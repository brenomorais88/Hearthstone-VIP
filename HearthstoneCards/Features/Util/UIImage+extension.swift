//
//  UIImage+extension.swift
//  HearthstoneCards
//
//  Created by Breno Morais on 04/08/23.
//

import UIKit

extension UIImageView {

    public func imageFromURL(urlString: String) {
        if self.image == nil{
            self.image = UIImage(named: "avatar")
        }
        
        guard let url = NSURL(string: urlString) else {
            self.image = UIImage(named: "avatar")
            return
        }
        
        URLSession.shared.dataTask(with: url as URL,
                                   completionHandler: { (data, response, error) -> Void in

            if error != nil {
                self.image = UIImage(named: "avatar")
                return
            }
            
            guard let imgData = data else {
                self.image = UIImage(named: "avatar")
                return
            }
            
            DispatchQueue.main.async(execute: { () -> Void in
                let image = UIImage(data: imgData)
                self.image = image
            })

        }).resume()
    }
    
}
