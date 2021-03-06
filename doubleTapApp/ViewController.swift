//
//  ViewController.swift
//  doubleTapApp
//
//  Created by Supreeth on 25/08/20.
//  Copyright © 2020 Supreeth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x:0, y:0, width:400, height: 400))
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named: "image")
        
        return imageView
    }()
    
    let doubleTapGesture = UITapGestureRecognizer(target: self,
                                                  action: #selector(didDoubleTap(_:)) )
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(imageView)
        imageView.center = view.center
        // Do any additional setup after loading the view.
        
        doubleTapGesture.numberOfTapsRequired = 2
        imageView.addGestureRecognizer(doubleTapGesture)
    }
    
    
   @objc func didDoubleTap(_ gesture: UITapGestureRecognizer){
    print("double tapped")
   }




}


