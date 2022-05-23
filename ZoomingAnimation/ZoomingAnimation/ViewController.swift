//
//  ViewController.swift
//  ZoomingAnimation
//
//  Created by javad on 17.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    let zoomImageView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
      
        zoomImageView.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        zoomImageView.backgroundColor = .red
        zoomImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animate)))
        view.addSubview(zoomImageView)
        
        
        
    }
    @objc func animate() {
        UIView.animate(withDuration: 0.75) {
            let height = (self.view.frame.width / self.zoomImageView.frame.width) * self.zoomImageView.frame.height
            let y =  self.view.frame.height / 2 - height / 2
            self.zoomImageView.frame = CGRect(x: 0, y: y, width: self.view.frame.width, height: height)
            
        }
    }


}

